library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, status) ~ 1
    data <- list(time = c(1, 1, 5, 5, 2, 7, 9), status = c(1, 0, 1, 0, 1, 1, 0))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




