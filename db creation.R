library(nycflights13)

flights$time_hour <- as.character(flights$time_hour)

conn <- DBI::dbConnect(duckdb::duckdb(), "flights.duckdb")

DBI::dbWriteTable(conn, name = "flights", value = flights)

DBI::dbDisconnect(conn, shutdown = TRUE)
