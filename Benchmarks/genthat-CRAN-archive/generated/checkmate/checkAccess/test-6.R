library(checkmate)

function_to_run <- function() {
    dn <- "/tmp/RtmpshYJaD"
    checkmate:::checkAccess(x = dn, access = "w")
}




