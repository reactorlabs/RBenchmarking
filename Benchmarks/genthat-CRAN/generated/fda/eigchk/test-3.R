library(fda)

function_to_run <- function() {
    Cmat <- structure(c(20, 10, 10, 10), .Dim = c(2L, 2L))
    fda:::eigchk(Cmat = Cmat)
}




