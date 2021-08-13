library(car)

function_to_run <- function() {
    Pottery <- carData::Pottery
    lm <- stats::lm
    car:::Anova.mlm(mod = lm(cbind(Al, Fe, Mg, Ca, Na) ~ Site, data = Pottery))
}




