library(prodlim)

function_to_run <- function() {
    tt2 <- Surv(time, status) ~ age + const(factor(edema)) + strata(sex, test = 0) + prop(bili, power = 1) + tp(albumin)
    prodlim:::strip.terms(terms = tt2, specials = c("prop", "timevar"), alias.names = list(timevar = "strata", prop = c("const",
        "tp")), arguments = list(prop = list(power = 0), timevar = list(test = 0)))
}




