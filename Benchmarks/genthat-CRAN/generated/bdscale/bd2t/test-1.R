

genthat_extracted_call <- function() {
    weekdays <- structure(c(16356, 16357, 16358, 16359, 16360), class = "Date")
    monday <- structure(16356, class = "Date")
    bdscale:::bd2t(dates = monday + c(1, 3), business.dates = weekdays)
}




