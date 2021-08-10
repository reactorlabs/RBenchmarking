library(backports)

function_to_run <- function() {
    z <- "ab%20cd"
    backports:::URLencode(URL = z, repeated = TRUE)
}




