library(fda)

function_to_run <- function() {
    hessmat <- structure(c(1, 0, 0, -1.66487178449084), .Dim = c(2L, 2L))
    Flist <- list(f = 3.0155765829623, grad = structure(c(0, 1.81735440694914), .Dim = 2:1), norm = 1.81735440694914)
    dbglev <- 1
    fda:::linesearch(Flist = Flist, hessmat = hessmat, dbglev = dbglev)
}




