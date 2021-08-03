library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, status, cens.code = "2") ~ 1
    data <- structure(list(time = 1:10, status = c(1, 2, 1, 2, 5, 5, 1, 1, 2, 2)), class = "data.frame", row.names = c(NA,
        -10L))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




