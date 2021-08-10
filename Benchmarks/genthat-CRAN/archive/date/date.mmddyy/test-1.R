library(date)

function_to_run <- function() {
    as.date <- date::as.date
    date:::date.mmddyy(sdate = as.date(10))
}




