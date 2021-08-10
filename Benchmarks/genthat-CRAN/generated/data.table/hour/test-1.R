library(data.table)

function_to_run <- function() {
    itime <- structure(c(0L, 36000L, 72000L, 21600L, 57600L, 18000L, 54000L, 3600L, 39600L, 75600L), class = "ITime")
    data.table:::hour(x = itime)
}




