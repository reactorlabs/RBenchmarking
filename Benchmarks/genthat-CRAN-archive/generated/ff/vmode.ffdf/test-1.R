

genthat_extracted_call <- function() {
    as.ffdf <- ff::as.ffdf
    ff:::vmode.ffdf(x = as.ffdf(data.frame(a = as.double(1:26), b = letters)))
}




