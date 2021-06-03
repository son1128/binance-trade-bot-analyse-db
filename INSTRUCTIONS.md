
Uses Github Actions to automatically analyse the [Binance Trade Bot](https://github.com/idkravitz/binance-trade-bot) DB. 

* The output of the analysis is written to the [README](README.md) of this repo.

## How to use

1. Fork this repo in your own personal Github.

2. Upload the `crypto_trading.db` and `supported_coin_list` from your running instance of the Binance Trade Bot to the root of this repo. If you can automate this, even better.

3. Check the "Actions" tab of your repo, and ensure that Actions is enabled on your fork. e.g. https://github.com/your_username/binance-trade-bot-analyse-db/actions

4. Once the Github acions pipeline runs, you can refresh the [README](README.md) to see the data about your coins and ratios.
