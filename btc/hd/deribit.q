.btc.hd.deribit.hdUrl:{
    [f;t;r]
    f:string 7h$.LL.datetime.kdbtounix[f]*1e3;
    t:string 7h$.LL.datetime.kdbtounix[t]*1e3;
    url:`$":https://www.deribit.com/api/v2/public/get_tradingview_chart_data?end_timestamp=", t ,"&instrument_name=BTC-PERPETUAL&resolution=",  r, "&start_timestamp=", f
    }

.btc.hd.deribit.hd:{
    [f;t;r]
    flip ((.j.k .Q.hg .btc.hd.deribit.hdUrl[f;t;r]) `result) _`status
 }

/ select 14h$.LL.datetime.unixtokdb[ticks%1e3], open, high, low, close from .btc.hd.deribit.hd[2019.01.01D;.z.p;"1D"]