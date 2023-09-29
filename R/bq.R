# BigQuery connect
#

library(bigrquery)
library(dplyr)
library(DBI)

bq_con <- function() {
  con <- dbConnect(
    bigrquery::bigquery(),
    project = "",
    dataset = "dev_nfl",
    billing = ""
  )
  return(con)
}

dbListTables(bq_con())
