library(prodlim)

function_to_run <- function() {
    Terms <- Hist(time, event) ~ age + sex
    stripUnspecials <- NULL
    stripSpecials <- c("strata", "cluster", "NN")
    stripArguments <- list(strata = NULL, NN = NULL, cluster = NULL)
    stripAlias <- list(strata = c("Strata", "factor"))
    prodlim:::strip.terms(terms = Terms, specials = stripSpecials, alias.names = stripAlias, unspecials = stripUnspecials,
        arguments = stripArguments)
}




