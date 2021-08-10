library(bit64)

function_to_run <- function() {
    what <- c("match", "%in%", "duplicated", "unique", "unipos", "table", "rank", "quantile")
    bit64:::`%in%.default`(x = "rank", table = what)
}




