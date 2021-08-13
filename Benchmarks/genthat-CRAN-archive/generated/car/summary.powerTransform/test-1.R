

genthat_extracted_call <- function() {
    powerTransform <- car::powerTransform
    Highway1 <- carData::Highway1
    car:::summary.powerTransform(object = powerTransform(cbind(len, adt, trks, sigs1) ~ 1, Highway1))
}




