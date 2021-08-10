library(ash)

function_to_run <- function() {
    nbin <- c(20L, 20L)
    ab <- structure(c(-5, -5, 5, 5), .Dim = c(2L, 2L))
    ash:::center(ab = ab[1, ], k = nbin[1])
}




