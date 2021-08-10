library(clue)

function_to_run <- function() {
    method_name <- "minimal euclidean membership distance"
    d <- structure(1, .Dim = c(1L, 1L), .Dimnames = list(NULL, NULL))
    clue:::cl_cross_proximity(x = d, description = method_name, class = "cl_cross_agreement")
}




