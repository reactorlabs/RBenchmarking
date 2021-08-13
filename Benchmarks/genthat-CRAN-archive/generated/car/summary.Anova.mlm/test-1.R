library(car)

function_to_run <- function() {
    Pottery <- carData::Pottery
    lm <- stats::lm
    Anova <- car::Anova
    car:::summary.Anova.mlm(object = Anova(lm(cbind(Al, Fe, Mg, Ca, Na) ~ Site, data = Pottery)))
}




