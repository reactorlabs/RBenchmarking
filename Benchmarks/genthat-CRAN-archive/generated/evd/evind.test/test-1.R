library(evd)

function_to_run <- function() {
    sealevel <- evd::sealevel
    evd:::evind.test(x = sealevel, method = "score")
}




