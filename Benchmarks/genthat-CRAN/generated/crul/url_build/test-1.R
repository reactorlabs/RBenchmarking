library(crul)

function_to_run <- function() {
    crul:::url_build(url = "https://httpbin.org", path = "get")
}




