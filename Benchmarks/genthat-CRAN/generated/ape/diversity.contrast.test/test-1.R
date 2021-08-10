library(ape)

function_to_run <- function() {
    x <- structure(c(1, 1, 1, 1, 1, 3, 3, 5, 9, 16, 33, 40, 50, 100, 216, 393, 850, 947, 1700, 2, 64, 300, 89, 67, 4, 34, 
        10, 150, 35, 2, 60, 81, 1, 3, 1, 11, 1, 18), .Dim = c(19L, 2L), .Dimnames = list(NULL, c("fleshy", "dry")))
    ape:::diversity.contrast.test(x = x, alternative = "g", nrep = 10000)
}




