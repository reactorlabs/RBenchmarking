library(prodlim)

function_to_run <- function() {
    t3 <- Surv(time, status != 0) ~ factor(edema) * age + strata(I(log(bili) > 1)) + strata(sex)
    prodlim:::strip.terms(terms = t3, specials = c("strata"), arguments = NULL)
}




