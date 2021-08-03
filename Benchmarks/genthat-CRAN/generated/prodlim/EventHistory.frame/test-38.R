library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, event) ~ X
    data <- structure(list(time = 1:100, event = c(0L, 0L, 0L, 1L, 2L, 0L, 2L, 1L, 0L, 2L, 1L, 0L, 2L, 0L, 1L, 1L, 1L, 0L,
        1L, 1L, 1L, 2L, 2L, 2L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 2L, 0L, 2L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 2L, 1L, 0L, 1L, 2L,
        1L, 0L, 1L, 1L, 2L, 0L, 1L, 0L, 0L, 0L, 2L, 1L, 2L, 2L, 2L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 0L, 2L, 0L, 0L,
        1L, 0L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 0L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 0L), X = c(0L, 0L, 0L,
        1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L,
        0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L,
        1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L,
        1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L)), class = "data.frame", row.names = c(NA, -100L))
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




