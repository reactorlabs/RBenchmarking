library(crul)

function_to_run <- function() {
    crul:::url_parse(url = "https://httpbin.org/get?foo=bar&stuff=things[]")
}




