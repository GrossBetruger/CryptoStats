with tomorrows as (
    select rowid -1 overriden_rowid, *
    from yahoo_btc_usd_daily
)
select max(tomorrows.Open / yahoo_btc_usd_daily.Open),
       tomorrows.Open - yahoo_btc_usd_daily.Open,
       yahoo_btc_usd_daily.Date,
       tomorrows.Date from tomorrows
join yahoo_btc_usd_daily on tomorrows.overriden_rowid = yahoo_btc_usd_daily.rowid
order by tomorrows.Open / yahoo_btc_usd_daily.Open desc
;

