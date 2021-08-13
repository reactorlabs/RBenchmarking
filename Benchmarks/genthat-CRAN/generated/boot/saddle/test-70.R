

genthat_extracted_call <- function() {
    city <- boot::city
    boot:::saddle(A = city$x - 1.25 * city$u, u = 0)
}




