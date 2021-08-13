library(digest)

function_to_run <- function() {
    digest:::hmac(key = "Jefe", object = "what do ya want for nothing?", algo = "md5")
}




