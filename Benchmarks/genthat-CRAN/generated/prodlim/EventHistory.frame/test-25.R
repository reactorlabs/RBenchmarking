library(prodlim)

function_to_run <- function() {
    formula <- Hist(time = time, status != 0) ~ 1
    data <- structure(list(time = 1:10, status = c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L)), class = "data.frame", row.names = c(NA,
        -10L))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




