

genthat_extracted_call <- function() {
    masses <- c(0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125)
    DATA <- structure(c(0, 4.52, 4.08, 4.08, 4.52, 3.97, 3.87, 3.73, 4.52, 0, 2.85, 4.52, 4.52, 4.52, 4.08, 4.52, 4.08, 2.85, 
        0, 1.61, 2.92, 2.81, 1.96, 3.17, 4.08, 4.52, 1.61, 0, 2.82, 2.89, 2.91, 3.97, 4.52, 4.52, 2.92, 2.82, 0, 3.55, 3.26, 
        4.52, 3.97, 4.52, 2.81, 2.89, 3.55, 0, 2.09, 3.26, 3.87, 4.08, 1.96, 2.91, 3.26, 2.09, 0, 1.5, 3.73, 4.52, 3.17, 
        3.97, 4.52, 3.26, 1.5, 0), .Dim = c(8L, 8L), .Dimnames = list(c("Face", "House", "Cat", "Chair", "Shoes", "Scissors", 
        "Bottle", "Scrambled"), c("Face", "House", "Cat", "Chair", "Shoes", "Scissors", "Bottle", "Scrambled")))
    ExPosition:::mdsTransform(D = DATA, masses = masses)
}




