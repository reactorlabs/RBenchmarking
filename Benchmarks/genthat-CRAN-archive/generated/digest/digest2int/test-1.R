library(digest)

function_to_run <- function() {
    digest:::digest2int(x = "The quick brown fox jumps over the lazy dog", seed = 0L)
}




