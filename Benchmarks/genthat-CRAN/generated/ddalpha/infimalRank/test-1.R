library(ddalpha)

function_to_run <- function() {
    ID <- c(0, 1, 0, 0, 0, 1, 1)
    IA <- c(2, 3, 1, 0, 2, 4, 1)
    ddalpha:::infimalRank(ID = ID, IA = IA)
}




