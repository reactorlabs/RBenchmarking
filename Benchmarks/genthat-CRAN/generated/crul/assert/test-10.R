library(crul)

function_to_run <- function() {
    url <- "https://httpbin.org"
    crul:::assert(x = url, y = "character")
}




