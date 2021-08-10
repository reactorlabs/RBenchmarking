library(fda)

function_to_run <- function() {
    sec <- c(0, 1, 60, 3600, 86400, 2678400, 31536000)
    fda:::as.POSIXct1970(x = sec)
}




