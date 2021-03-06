library(RJDBC);
drive="C:"
source(paste(drive,"\\xampp\\htdocs\\gpu_freedom\\src\\playground\\R\\config.r",sep=""))
drv <- JDBC("com.mysql.jdbc.Driver", paste(drive,"\\jdbc\\mysql-connector-java-5.1.5-bin.jar",sep=""),identifier.quote="`");

b_conn  <- dbConnect(drv, "jdbc:mysql://127.0.0.1:3306/bitcoin", username, password);
b_pricetable <- dbReadTable(b_conn, "pricevalue")
b_price      <- dbGetQuery(b_conn, "select price from pricevalue order by id asc")
b_last_prices  <- dbGetQuery(b_conn, "select price from pricevalue where create_dt>(NOW() - INTERVAL 7 DAY)  order by id asc")
b_last_price  <- dbGetQuery(b_conn, "select price from pricevalue where create_dt=(select max(create_dt) from pricevalue)")
b_avg_price   <- dbGetQuery(b_conn, "SELECT DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG( price ) as usd  FROM pricevalue GROUP BY date ORDER BY date")

b_avg_price_last_60 <- dbGetQuery(b_conn, "SELECT DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG( price ) as usd  FROM pricevalue GROUP BY date ORDER BY date LIMIT 60")

b_btc_shortterm_open <- dbGetQuery(b_conn, "select btc from wallet where name='shortterm' and id=(select max(id) from wallet where name='shortterm');")
b_btc_midterm_open <- dbGetQuery(b_conn, "select btc from wallet where name='midterm' and id=(select max(id) from wallet where name='midterm');")
b_btc_longterm_open <- dbGetQuery(b_conn, "select btc from wallet where name='longterm' and id=(select max(id) from wallet where name='longterm');")
b_btc_tiz_open <- dbGetQuery(b_conn, "select btc from wallet where name='tiz' and id=(select max(id) from wallet where name='tiz');")

p_conn      <- dbConnect(drv, "jdbc:mysql://127.0.0.1:3306/powergrid", username, password);
p_freqtable <- dbReadTable(p_conn, "tbfrequency")
p_freq      <- dbGetQuery(p_conn, "select frequencyhz from tbfrequency order by id asc")
p_avg_freq  <- dbGetQuery(p_conn, "select DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG(frequencyhz) as hz from tbfrequency GROUP BY date ORDER BY date")

p_netdiff     <- dbGetQuery(p_conn, "select networkdiff from tbfrequency order by id asc")
p_avg_netdiff <- dbGetQuery(p_conn, "select DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG(networkdiff) as s from tbfrequency GROUP BY date ORDER BY date")

f_conn <- dbConnect(drv, "jdbc:mysql://127.0.0.1:3306/finance", username, password);
f_tickerstable <- dbReadTable(f_conn, "tickers")
f_vix       <- dbGetQuery(f_conn, "select value from tickers where name='VIX' order by id asc")
f_avg_vix   <- dbGetQuery(f_conn, "select DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG(value) as usd from tickers where name='VIX' GROUP BY date ORDER BY date")
f_sp        <- dbGetQuery(f_conn, "select value from tickers where name='GSPC' order by id asc")
f_avg_sp    <- dbGetQuery(f_conn, "select DATE_FORMAT( create_dt,  '%Y-%m-%d' ) AS date, AVG(value) as usd from tickers where name='GSPC' GROUP BY date ORDER BY date")

# analyze(b_price$price)
# analyze(b_lastprice$price)
#
# analyze(p_freq$frequencyhz)
# analyze(p_netdiff$networkdiff)

# analyze(f_sp$value)
# analyze(f_vix$value)

# csv export example
write.table(b_avg_price,file="bitcoin_price.csv",sep=";",row.names=T)