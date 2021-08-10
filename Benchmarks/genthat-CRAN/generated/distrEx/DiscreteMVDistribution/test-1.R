library(distrEx)

function_to_run <- function() {
    distrEx:::DiscreteMVDistribution(supp = matrix(c(1:5, rep(3, 5)), ncol = 2, byrow = TRUE))
}




