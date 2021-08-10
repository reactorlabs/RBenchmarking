library(english)

function_to_run <- function() {
    x <- structure(1:20, class = "english", useUK = FALSE)
    english:::print.english(x = x)
}




