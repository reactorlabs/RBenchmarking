library(digest)

function_to_run <- function() {
    errormode <- "stop"
    algoint <- 1
    algo <- "md5"
    digest:::non_streaming_digest(algo = algo, errormode = errormode, algoint = algoint)
}




