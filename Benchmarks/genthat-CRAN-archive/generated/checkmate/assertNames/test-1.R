

genthat_extracted_call <- function() {
    iris <- datasets::iris
    cn <- c("Species", "Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
    checkmate:::assertNames(x = names(iris), permutation.of = cn)
}




