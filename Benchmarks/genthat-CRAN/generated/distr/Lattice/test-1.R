library(distr)

function_to_run <- function() {
    wa <- 1
    supp1 <- c(0, 1, 2, 3)
    distr:::Lattice(pivot = supp1[1], width = wa, Length = length(supp1))
}




