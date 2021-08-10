library(crul)

function_to_run <- function() {
    url <- "https://httpbin.org"
    crul:::handle_find(x = url)
}




