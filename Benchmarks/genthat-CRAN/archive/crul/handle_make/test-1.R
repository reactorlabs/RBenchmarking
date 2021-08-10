library(crul)

function_to_run <- function() {
    x <- "https://httpbin.org"
    crul:::handle_make(x = x)
}




