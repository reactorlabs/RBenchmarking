library(coin)

function_to_run <- function() {
    diffusion <- structure(list(pd = c(0.8, 0.83, 1.89, 1.04, 1.45, 1.38, 1.91, 1.64, 0.73, 1.46, 1.15, 0.88, 0.9, 0.74, 
        1.21), age = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L), .Label = c("12-26 Weeks", "At term"), 
        class = "factor")), class = "data.frame", row.names = c(NA, -15L))
    coin:::wilcox_test.formula(formula = pd ~ age, data = diffusion, distribution = "exact", conf.int = TRUE)
}




