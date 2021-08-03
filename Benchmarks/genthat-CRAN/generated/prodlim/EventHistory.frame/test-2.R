library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, outcome != "0") ~ prop(X1) + X2 + cluster(X3) + X4
    data <- structure(list(time = 1:7, status = c(0, 1, 1, 0, 0, 0, 1), X2 = c(2.24, 3.22, 9.59, 4.4, 3.54, 6.81, 5.05),
        X3 = c(1, 1, 1, 1, 0, 0, 1), X4 = c(44.69, 37.41, 68.54, 38.85, 35.9, 27.02, 41.84), X1 = structure(c(2L, 3L, 2L,
            1L, 1L, 2L, 3L), .Label = c("c", "a", "b"), class = "factor"), outcome = c("cause1", "0", "cause2", "cause1",
            "cause2", "cause2", "0")), row.names = c(NA, -7L), class = "data.frame")
    prodlim:::EventHistory.frame(formula = formula, data = data, specials = c("prop", "timevar", "cluster"), stripSpecials = c("prop",
        "cluster", "timevar"))
}




