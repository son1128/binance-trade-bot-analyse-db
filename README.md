Uses Github Actions to automatically analyse the [Binance Trade Bot](https://github.com/idkravitz/binance-trade-bot) DB. 

* The output of the analysis is written to the [README](README.md) of this repo.

## How to use

1. Fork this repo in your own personal Github.

2. **Go into the Settings tab of the repo and make the repo private** if you do not want everyone to see your coin totals, etc.

3. Upload the `crypto_trading.db` and `supported_coin_list` from your running instance of the Binance Trade Bot to the root of this repo. If you can automate this, even better.

4. Check the "Actions" tab of your repo, and ensure that Actions is enabled on your fork. e.g. https://github.com/your_username/binance-trade-bot-analyse-db/actions

5. Once the Github acions pipeline runs, you can refresh the [README](README.md) to see the data about your coins and ratios.


### Example Output:

Generated on `Thursday 03-June-2021 at 10:07:16`

### Current to Target Coin Ratio
`current_coin_ratio.sh`

Date|Current|Target|Ratio
---|---|---|---
2021-06-03 10:06:57.718571|XRP|EOS|-0.67
2021-06-03 10:06:57.718571|XRP|ETC|-1.5
2021-06-03 10:06:57.718571|XRP|BTT|-3.93
2021-06-03 10:06:57.718571|XRP|QTUM|-4.19
2021-06-03 10:06:57.718571|XRP|OMG|-4.54
2021-06-03 10:06:57.718571|XRP|XLM|-4.77
2021-06-03 10:06:57.718571|XRP|ADA|-5.25
2021-06-03 10:06:57.718571|XRP|LUNA|-7.21
2021-06-03 10:06:57.718571|XRP|TRX|-9.1
2021-06-03 10:06:57.718571|XRP|DASH|-9.59
2021-06-03 10:06:57.718571|XRP|BAT|-9.87
2021-06-03 10:06:57.718571|XRP|NEO|-10.22
2021-06-03 10:06:57.718571|XRP|VET|-10.61
2021-06-03 10:06:57.718571|XRP|ONT|-10.83
2021-06-03 10:06:57.718571|XRP|ATOM|-15.64
2021-06-03 10:06:57.718571|XRP|ICX|-15.96
2021-06-03 10:06:57.718571|XRP|XMR|-16.4

_When ratio goes above zero, the bot will buy it via the bridge coin._

----

### Current Coin Progress
`current_coin_progress.sh`


**Trade no:** 
6
**Hodlings:** 
7433.45
**Date:** 
2021-05-31 15:07:40.247358
**Grow:** 
0
%

**Trade no:** 
10
**Hodlings:** 
7535.5
**Date:** 
2021-05-31 17:05:05.642195
**Grow:** 
1.37285
%

**Current coin:** `XRP`

----

### All Coins Progress
`all_coin_progress.sh`

Coin|Starting value|Last value|Grow %
---|---|---|---
ADA|-|-|-
ATOM|-|-|-
BAT|-|-|-
BTT|-|-|-
DASH|-|-|-
EOS|142.55|142.55|0
ETC|12.59|13.84|3.33825
ICX|799.25|799.25|0
LUNA|-|-|-
NEO|16.527|16.527|0
OMG|140.25|140.25|0
ONT|-|-|-
QTUM|-|-|-
TRX|11688.2|11688.2|0
VET|-|-|-
XLM|761.9|761.9|0
XMR|3.44705|3.44705|0
XRP|7433.45|7533.45|1.943

`-` indicates never bought

### Trade Amounts
`trade_amount.sh`

Date|Coin|Amount
---|---|---
2021-05-31 15:37:23.330232|BTT|2012.0
2021-06-02 02:17:09.057570|EOS|14.55
2021-06-02 03:41:48.188945|ETC|13.84
2021-06-01 13:45:52.948057|ETC|1.59
2021-06-01 13:39:31.554812|ETC|13.444
2021-06-01 08:39:12.851672|ICX|79.25
2021-06-01 08:33:48.200245|ICX|80.87
2021-06-01 19:32:46.271530|NEO|16.527
2021-06-01 13:20:27.687593|NEO|16.652
2021-06-01 20:33:57.480412|OMG|1.25
2021-06-01 00:34:49.326303|TRX|1168.2
2021-05-31 21:25:59.740037|XLM|761.9
2021-06-01 11:28:08.211580|XMR|3.44705
2021-06-01 11:23:04.416853|XMR|3.31715
2021-06-01 11:15:18.658299|XMR|3.34747
2021-05-31 15:07:40.247358|XRP|7433.45
2021-05-31 14:36:59.569249|XRP|6641.12

