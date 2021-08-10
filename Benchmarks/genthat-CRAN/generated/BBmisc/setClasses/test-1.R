library(BBmisc)

function_to_run <- function() {
    ans <- structure(c(1L, 2L, 2L, 3L), .Label = c("a", "b", "c"))
    BBmisc:::setClasses(x = ans, classes = "factor")
}




