library(chron)

function_to_run <- function() {
    dates <- chron::dates
    chron:::cut.dates(x = dates("07/01/92") + 0:14, breaks = "weeks")
}




