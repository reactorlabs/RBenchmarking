

genthat_extracted_call <- function() {
    what <- c("match", "%in%", "duplicated", "unique", "unipos", "table", "rank", "quantile")
    bit64:::`%in%.default`(x = "rank", table = what)
}




