library(colr)

function_to_run <- function() {
    iris <- datasets::iris
    colr:::cgrep(x = iris, pattern = "\\.")
}




