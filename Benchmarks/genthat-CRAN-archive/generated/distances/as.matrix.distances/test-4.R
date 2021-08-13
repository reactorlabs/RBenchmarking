

genthat_extracted_call <- function() {
    my_distances2 <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), .Dim = c(1L, 10L), normalization = structure(1, .Dim = c(1L, 
        1L)), weights = structure(1, .Dim = c(1L, 1L)), class = "distances")
    distances:::as.matrix.distances(x = my_distances2)
}




