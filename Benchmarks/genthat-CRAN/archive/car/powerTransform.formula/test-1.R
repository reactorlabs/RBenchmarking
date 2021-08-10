library(car)

function_to_run <- function() {
    Highway1 <- carData::Highway1
    car:::powerTransform.formula(object = cbind(len, adt, trks, sigs1) ~ htype, data = Highway1)
}




