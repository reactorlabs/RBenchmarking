library(prodlim)

function_to_run <- function() {
    t2 <- y ~ x + treat(z, power = 2) + treat(v, power = -1)
    prodlim:::strip.terms(terms = t2, specials = "treat", arguments = list(treat = list("power")))
}




