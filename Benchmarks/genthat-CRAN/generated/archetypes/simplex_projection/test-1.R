library(archetypes)

function_to_run <- function() {
    radius <- 10
    params <- structure(c(20.0987217111965, 16.9282565643067, 2.93235409714557, 13.5233431650629, 2.94483145825584, 16.6774143916538, 
        18.9978656735497, 9.72241696199198, 2.23764002970496, 11.612927939731), .Dim = c(5L, 2L), .Dimnames = list(NULL, 
        c("x", "y")))
    archetypes:::simplex_projection(x = params, r = radius - 1)
}




