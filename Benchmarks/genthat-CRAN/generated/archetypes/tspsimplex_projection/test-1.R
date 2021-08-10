library(archetypes)

function_to_run <- function() {
    radius <- 10
    params <- structure(c(2.90908698250545, 9.13259165917682, 16.2204576945964, 18.8309983273598, 10.906363236367, 2.62993678238131, 
        2.66521233016563, 18.6217390213701), .Dim = c(4L, 2L), .Dimnames = list(NULL, c("x", "y")))
    archetypes:::tspsimplex_projection(x = params, r = radius - 1)
}




