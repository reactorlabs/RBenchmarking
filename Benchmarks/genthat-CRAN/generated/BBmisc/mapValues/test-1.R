library(BBmisc)

function_to_run <- function() {
    x <- structure(1:3, .Label = c("aab", "aba", "baa"), class = "factor")
    BBmisc:::mapValues(x = x, from = "a.a", to = "zzz", regex = TRUE)
}




