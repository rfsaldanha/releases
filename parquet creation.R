library(nycflights13)

flights$time_hour <- as.character(flights$time_hour)

arrow::write_parquet(x = flights, sink = "flights.parquet")
