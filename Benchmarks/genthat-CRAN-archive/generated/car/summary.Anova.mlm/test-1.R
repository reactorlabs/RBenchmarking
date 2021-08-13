

genthat_extracted_call <- function() {
    Pottery <- carData::Pottery
    lm <- stats::lm
    Anova <- car::Anova
    car:::summary.Anova.mlm(object = Anova(lm(cbind(Al, Fe, Mg, Ca, Na) ~ Site, data = Pottery)))
}




