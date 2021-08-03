library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, status) ~ 1
    data <- structure(list(time = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 7), status = c(1, 0, 0, 1, 0, 1, 0, 1, 1, 0)), class = "data.frame",
        row.names = c(NA, -10L))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




