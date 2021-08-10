library(base64url)

function_to_run <- function() {
    encoded <- "cGxhaW4gdGV4dA"
    base64url:::base64_urldecode(x = encoded)
}




