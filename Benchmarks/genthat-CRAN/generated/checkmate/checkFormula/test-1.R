library(checkmate)

function_to_run <- function() {
    f <- Species ~ Sepal.Length + Sepal.Width
    checkmate:::checkFormula(x = f)
}




