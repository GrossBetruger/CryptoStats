#/bin/bash

set -e 

sqlite3 --cmd ".mode csv" --cmd ".import BTC-USD_daily_all_times.csv yahoo_btc_usd_daily" --cmd ".import ETH-USD_daily_all_times.csv yahoo_eth_usd_daily" --cmd ".save crypto_stats.db"

