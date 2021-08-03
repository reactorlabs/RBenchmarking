library(prodlim)

function_to_run <- function() {
    Terms <- Hist(time, outcome) ~ prop(X1) + cluster(X3) + X4
    stripUnspecials <- NULL
    stripSpecials <- c("prop", "cluster", "timevar")
    stripArguments <- NULL
    stripAlias <- NULL
    prodlim:::strip.terms(terms = Terms, specials = stripSpecials, alias.names = stripAlias, unspecials = stripUnspecials,
        arguments = stripArguments)
}




