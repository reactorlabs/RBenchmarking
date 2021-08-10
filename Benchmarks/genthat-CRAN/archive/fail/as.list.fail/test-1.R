library(fail)

function_to_run <- function() {
    path <- "/tmp/Rtmp5pSR3b/3a0e767e95e03"
    fail <- fail::fail
    fail:::as.list.fail(x = fail(path))
}




