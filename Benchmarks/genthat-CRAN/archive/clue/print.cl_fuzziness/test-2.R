library(clue)

function_to_run <- function() {
    x <- structure(c(0.5751, 0.2546, 0.3894), description = "Fuzziness using normalized partition coefficient", class = "cl_fuzziness")
    clue:::print.cl_fuzziness(x = x)
}




