library(prodlim)

function_to_run <- function() {
    Terms <- Hist(time, status) ~ prop(X1) + X2 + cluster(X3) + X4
    stripUnspecials <- NULL
    stripSpecials <- c("prop", "cluster")
    stripArguments <- NULL
    stripAlias <- NULL
    prodlim:::strip.terms(terms = Terms, specials = stripSpecials, alias.names = stripAlias, unspecials = stripUnspecials,
        arguments = stripArguments)
}




