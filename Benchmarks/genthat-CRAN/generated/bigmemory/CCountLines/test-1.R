library(bigmemory)

function_to_run <- function() {
    filename <- "/tmp/RtmpDlnaua/foo.txt"
    bigmemory:::CCountLines(fileName = filename)
}




