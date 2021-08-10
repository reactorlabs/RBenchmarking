library(car)

function_to_run <- function() {
    Moore <- carData::Moore
    car:::leveneTest.formula(y = conformity ~ fcategory * partner.status, data = Moore, center = mean, trim = 0.1)
}




