library(extWeibQuant)

function_to_run <- function() {
    newX <- structure(c(4.68332864446893, 4.79928709585693, 4.60688098069113, 4.92031324295567, 3.96171159741243, 4.5575390992326, 
        4.73440552935244, 4.66117477125408, 4.83396176478891, 3.90822900760213), .Dim = c(5L, 2L))
    i <- 1L
    extWeibQuant:::mse(vec = newX[, i], tq = structure(4.18004818129877, names = "5%"))
}




