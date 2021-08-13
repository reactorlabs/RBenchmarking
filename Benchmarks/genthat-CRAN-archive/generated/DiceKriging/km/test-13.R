

genthat_extracted_call <- function() {
    y <- c(-0.3, 0, 0, 0.5, 0.9)
    x <- c(0, 0.4, 0.6, 0.8, 1)
    formula <- y ~ x
    DiceKriging:::km(formula = formula, design = data.frame(x = x), response = data.frame(y = y), covtype = "matern5_2")
}




