library(prodlim)

function_to_run <- function() {
    formula <- Hist(time = list(L, R), event) ~ 1
    data <- structure(list(L = 1:10, R = c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12), status = c(1, 1, 0, 1, 1, 1, 1, 0, 0, 0),
        event = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -10L), class = "data.frame")
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




