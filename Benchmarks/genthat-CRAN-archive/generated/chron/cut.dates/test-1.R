

genthat_extracted_call <- function() {
    dates <- chron::dates
    chron:::cut.dates(x = dates("07/01/92") + 0:14, breaks = "weeks")
}




