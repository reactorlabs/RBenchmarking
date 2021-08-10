library(base64enc)

function_to_run <- function() {
    x <- as.raw(c(116, 104, 101, 32, 100, 101, 99, 111, 100, 101, 100, 32, 99, 111, 110, 116, 101, 110, 116, 44, 32, 111, 
        116, 104, 101, 114, 119, 105, 115, 101, 32, 116, 104, 101, 32, 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 98, 
        121, 116, 101, 115))
    base64encode <- base64enc::base64encode
    base64enc:::base64decode(what = base64encode(x))
}




