library(crul)

function_to_run <- function() {
    encode <- "multipart"
    body <- NULL
    crul:::prep_body(body = body, encode = encode)
}




