library(backports)

function_to_run <- function() {
    backports:::hasName(x = list(a = 1, b = 2), name = c("a", "b", "c"))
}




