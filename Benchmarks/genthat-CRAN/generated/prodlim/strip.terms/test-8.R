library(prodlim)

function_to_run <- function() {
    t4 <- Surv(time, status) ~ age + const(factor(edema)) + strata(sex, test = 0) + prop(bili, power = 1) + tp(albumin)
    prodlim:::strip.terms(terms = t4, specials = c("prop", "timevar"), alias.names = list(timevar = "strata", prop = c("const",
        "tp")), unspecials = "prop", arguments = list(prop = list(power = 0), timevar = list(test = 0)))
}




