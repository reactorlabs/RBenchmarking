library(deSolve)

function_to_run <- function() {
    out <- structure(c(0, 2583.6573104236, 0.1, 3.33333332677019, 100, 0.0434782609397198), .Dim = 2:3, .Dimnames = list(NULL, 
        c("time", "Bact", "Sub")), istate = c(3L, 289L, 573L, NA, 4L, 4L, 0L, 55L, 22L, NA, NA, NA, NA, 33L, 2L, 2L, NA, 
        NA, NA, NA, NA), rstate = c(161.419955998713, 161.419955998713, 2623.74959065474, 0, 140.307100990368), iroot = 1L, 
        troot = 2583.6573104236, lengthvar = 2L, class = c("deSolve", "matrix"), type = "lsodar")
    deSolve:::print.deSolve(x = out)
}




