library(crank)

function_to_run <- function() {
    x <- structure(list(test = "FriedmanTest", maxx = list(indx = c(1, 1), element = structure(c(3, 3, 2, 1, 2, 3, 2, 1, 
        1, 4, 4, 4), .Dim = 3:4), value = structure(c(7, 0.0718977724964651), names = c("Friedman chi-squared", ""))), minx = list(indx = c(1, 
        1), element = structure(c(3, 4, 2, 1, 2, 4, 2, 1, 1, 4, 3, 3), .Dim = 3:4), value = structure(c(4.2, 0.240661885209616), 
        names = c("Friedman chi-squared", "")))), class = "lwstat")
    crank:::print.lwstat(x = x)
}




