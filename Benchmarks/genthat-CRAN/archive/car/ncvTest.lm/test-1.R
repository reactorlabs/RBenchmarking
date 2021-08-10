library(car)

function_to_run <- function() {
    Ornstein <- carData::Ornstein
    lm <- stats::lm
    car:::ncvTest.lm(model = lm(interlocks ~ assets + sector + nation, data = Ornstein), var.formula = ~assets + sector + 
        nation, data = Ornstein)
}




