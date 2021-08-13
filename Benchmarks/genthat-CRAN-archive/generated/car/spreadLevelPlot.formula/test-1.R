library(car)

function_to_run <- function() {
    Ornstein <- carData::Ornstein
    car:::spreadLevelPlot.formula(x = interlocks + 1 ~ nation, data = Ornstein)
}




