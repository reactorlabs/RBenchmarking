

genthat_extracted_call <- function() {
    errormode <- "stop"
    algoint <- 1
    algo <- "md5"
    digest:::non_streaming_digest(algo = algo, errormode = errormode, algoint = algoint)
}




