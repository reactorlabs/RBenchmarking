library(checkmate)

function_to_run <- function() {
    x <- "/tmp/RtmpshYJaD/process.log"
    overwrite <- FALSE
    extension <- NULL
    checkmate:::checkPathForOutput(x = x, overwrite = overwrite, extension = extension)
}




