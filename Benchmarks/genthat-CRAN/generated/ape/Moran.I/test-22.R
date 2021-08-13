

genthat_extracted_call <- function() {
    w <- structure(c(0, 2.38095238095238, 1.02040816326531, 0.806451612903226, 0.5, 2.38095238095238, 0, 1.02040816326531, 
        0.806451612903226, 0.5, 1.02040816326531, 1.02040816326531, 0, 0.806451612903226, 0.5, 0.806451612903226, 0.806451612903226, 
        0.806451612903226, 0, 0.5, 0.5, 0.5, 0.5, 0.5, 0), .Dim = c(5L, 5L), .Dimnames = list(c("Homo", "Pongo", "Macaca", 
        "Ateles", "Galago"), c("Homo", "Pongo", "Macaca", "Ateles", "Galago")))
    body <- structure(c(4.09434, 3.61092, 2.37024, 2.02815, -1.46968), names = c("Homo", "Pongo", "Macaca", "Ateles", "Galago"))
    ape:::Moran.I(x = body, weight = w, alternative = "greater")
}




