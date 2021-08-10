library(base64enc)

function_to_run <- function() {
    base64enc:::dataURI(data = as.raw(1:10))
}




