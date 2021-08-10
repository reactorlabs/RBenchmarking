library(conicfit)

function_to_run <- function() {
    c3 <- structure(c(-3.68329058911984, -4.56273509136958, 227.148556340411), .Dim = c(1L, 3L))
    conicfit:::calculateCircle(x = c3[1], y = c3[2], r = c3[3])
}




