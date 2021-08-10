library(date)

function_to_run <- function() {
    as.date <- date::as.date
    date:::date.mmddyyyy(sdate = as.date(1:10))
}




