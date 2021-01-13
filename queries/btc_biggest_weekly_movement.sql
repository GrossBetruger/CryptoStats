with next_week as (
    select rowid -7 overriden_rowid, *
    from yahoo_btc_usd_daily
)
select max(next_week.Open / yahoo_btc_usd_daily.Open),
       next_week.Open - yahoo_btc_usd_daily.Open,
       yahoo_btc_usd_daily.Date,
       next_week.Date from next_week
join yahoo_btc_usd_daily on next_week.overriden_rowid = yahoo_btc_usd_daily.rowid
order by next_week.Open / yahoo_btc_usd_daily.Open desc
;

