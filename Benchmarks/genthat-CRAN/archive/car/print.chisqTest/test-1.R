library(car)

function_to_run <- function() {
    x <- structure(list(formula = ~fitted.values, formula.name = "Variance", ChiSquare = 46.985372586951, Df = 1, p = 7.15184835854988e-12, 
        test = "Non-constant Variance Score Test"), class = "chisqTest")
    car:::print.chisqTest(x = x)
}




