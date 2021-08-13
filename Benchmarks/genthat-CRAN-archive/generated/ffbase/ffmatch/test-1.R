

genthat_extracted_call <- function() {
    as.ff <- ff::as.ff
    ffbase:::ffmatch(x = as.ff(as.factor(c(LETTERS, NA))), table = as.ff(as.factor(c("C", "B", "Z", "X", "HMM", "Nothing", 
        NA))), trace = TRUE, BATCHBYTES = 20)
}




