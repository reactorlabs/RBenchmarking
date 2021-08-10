library(crul)

function_to_run <- function() {
    url <- "https://httpbin.org"
    query <- NULL
    path <- "post"
    crul:::make_url(url = url, handle = NULL, path = path, query = query)
}




