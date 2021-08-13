library(car)

function_to_run <- function() {
    Ornstein <- carData::Ornstein
    lm <- stats::lm
    car:::slp(lm(interlocks + 1 ~ assets + sector + nation, data = Ornstein))
}




