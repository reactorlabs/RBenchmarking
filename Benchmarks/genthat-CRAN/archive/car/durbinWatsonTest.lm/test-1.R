library(car)

function_to_run <- function() {
    lm <- stats::lm
    Hartnagel <- carData::Hartnagel
    car:::durbinWatsonTest.lm(model = lm(fconvict ~ tfr + partic + degrees + mconvict, data = Hartnagel))
}




