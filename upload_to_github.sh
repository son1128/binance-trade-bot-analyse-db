#!/bin/bash
set -e

# Run this via crontab to get reports every 30 mins.
# If you set it more frequently, watch out for the 2000 minute limit per month for private accounts on Github Actions.

# # upload binance trade bot db every 30 mins to github
# */30 * * * * cd /root/binance-trade-bot-analyse-db; /root/binance-trade-bot-analyse-db/upload_to_github.sh


# The bot code should in the same root dir as this repo. 
BOT_ROOT_DIR=../binance-trade-bot

if [ -z "$1" ]
  then
    echo "$DATE_STRING : No argument supplied for BOT_ROOT_DIR. Assuming default: ${BOT_ROOT_DIR}"
  else
    BOT_ROOT_DIR=${1}
fi

if [ -d "${BOT_ROOT_DIR}" ] 
then
    echo "Directory ${BOT_ROOT_DIR} exists." 
else
    echo "Error: Directory ${BOT_ROOT_DIR} does not exist. Cannot upload db."
    exit 1
fi

git config user.name ${USER}-github-backup
git config user.email ${USER}@github.com

# Pull latest before push
git pull $REPOSRC --quiet

DATE_STRING="$(date '+%T on %A %d-%B-%Y')"

echo "${DATE_STRING} Copying latest crypto_trading.db to $PWD"
echo "${DATE_STRING} pwd: $PWD"
echo "${DATE_STRING} BOT_ROOT_DIR: $BOT_ROOT_DIR"

cp ${BOT_ROOT_DIR}/data/crypto_trading.db .
cp ${BOT_ROOT_DIR}/supported_coin_list .


git diff --quiet && git diff --staged --quiet || git commit -am "$DATE_STRING automatic backup." --quiet
git push origin main --quiet

