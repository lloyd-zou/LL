-1"LL.datetime";
.LL.datetime.kdbtounix:{
    [k]
    7h$(k-1970.01.01D)%1e9
    }

.LL.datetime.unixtokdb:{
    [u]
    12h$1970.01.01D00:00:00+u*1e9
    }
