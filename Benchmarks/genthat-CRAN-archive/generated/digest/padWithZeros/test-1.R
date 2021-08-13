library(digest)

function_to_run <- function() {
    key <- "Jefe"
    algo <- "sha1"
    digest:::padWithZeros(k = key, algo = algo)
}




