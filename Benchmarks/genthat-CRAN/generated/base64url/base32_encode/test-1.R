library(base64url)

function_to_run <- function() {
    x <- "plain text"
    base64url:::base32_encode(x = x)
}




