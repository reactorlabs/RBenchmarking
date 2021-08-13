library(crul)

function_to_run <- function() {
    url <- "https://httpbin.org/post"
    query <- list()
    crul:::add_query(x = query, url = url)
}




