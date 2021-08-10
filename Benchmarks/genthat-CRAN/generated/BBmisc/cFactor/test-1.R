library(BBmisc)

function_to_run <- function() {
    f2 <- structure(1:2, .Label = c("b", "c"), class = "factor")
    f1 <- structure(1:2, .Label = c("a", "b"), class = "factor")
    BBmisc:::cFactor(f1, f2)
}




