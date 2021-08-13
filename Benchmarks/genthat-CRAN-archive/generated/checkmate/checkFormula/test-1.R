

genthat_extracted_call <- function() {
    f <- Species ~ Sepal.Length + Sepal.Width
    checkmate:::checkFormula(x = f)
}




