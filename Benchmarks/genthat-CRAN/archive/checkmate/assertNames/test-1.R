library(checkmate)

function_to_run <- function() {
    iris <- datasets::iris
    cn <- c("Species", "Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
    checkmate:::assertNames(x = names(iris), permutation.of = cn)
}




