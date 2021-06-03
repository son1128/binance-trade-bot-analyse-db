
Uses Github Actions to automatically analyse the [Binance Trade Bot](https://github.com/idkravitz/binance-trade-bot) DB. 

* The output of the analysis is written to the [README](README.md) of this repo.

## How to use

1. Fork this repo in your own personal Github.

2. **Go into the Settings tab of the repo and make the repo private** if you do not want everyone to see your coin totals, etc.

3. Upload the `crypto_trading.db` and `supported_coin_list` from your running instance of the Binance Trade Bot to the root of this repo. If you can automate this, even better.

4. Check the "Actions" tab of your repo, and ensure that Actions is enabled on your fork. e.g. https://github.com/your_username/binance-trade-bot-analyse-db/actions

5. Once the Github acions pipeline runs, you can refresh the [README](README.md) to see the data about your coins and ratios.
