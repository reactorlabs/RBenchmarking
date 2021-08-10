library(crul)

function_to_run <- function() {
    headers <- list(list(status = "HTTP/2 200 ", date = "Sat, 07 Aug 2021 15:50:55 GMT", `content-type` = "application/json", 
        `content-length` = "401", server = "gunicorn/19.9.0", `access-control-allow-origin` = "*", `access-control-allow-credentials` = "true"))
    crul:::last(x = headers)
}




