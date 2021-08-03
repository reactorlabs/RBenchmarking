library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, status) ~ 1
    data <- structure(list(time = c(0.35, 0.4, 0.51, 0.51, 0.7, 0.73), status = c(0, 1, 1, 0, 0, 1)), class = "data.frame",
        row.names = c(NA, -6L))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




