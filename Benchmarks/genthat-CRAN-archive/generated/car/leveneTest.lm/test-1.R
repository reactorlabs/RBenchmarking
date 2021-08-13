library(car)

function_to_run <- function() {
    Moore <- carData::Moore
    lm <- stats::lm
    car:::leveneTest.lm(y = lm(conformity ~ fcategory * partner.status, data = Moore))
}




