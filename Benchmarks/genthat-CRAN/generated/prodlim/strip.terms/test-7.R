library(prodlim)

function_to_run <- function() {
    t <- y ~ x + SP(z) + factor(v)
    prodlim:::strip.terms(terms = t, specials = "SP", arguments = NULL)
}




