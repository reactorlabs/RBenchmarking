

genthat_extracted_call <- function() {
    as.ffdf <- ff::as.ffdf
    ff:::length.ffdf(x = as.ffdf(data.frame(a = 1:26, b = letters)))
}




