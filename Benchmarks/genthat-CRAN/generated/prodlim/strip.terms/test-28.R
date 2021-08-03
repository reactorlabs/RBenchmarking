library(prodlim)

function_to_run <- function() {
    tt <- Surv(time, status) ~ age + prop(factor(edema)) + timevar(sex, test = 0) + prop(bili, power = 1)
    prodlim:::strip.terms(terms = tt, specials = c("prop", "timevar"), arguments = list(prop = list(power = 0), timevar = list(test = 0)))
}




