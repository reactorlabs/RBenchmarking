

genthat_extracted_call <- function() {
    W2 <- structure(c(-0.999227066860147, 0.0270371591503799, -0.0393099078359081, -0.99963442919153), .Dim = c(2L, 2L))
    W1 <- structure(c(1, 0, 0, 1), .Dim = c(2L, 2L))
    rerow <- coloredICA::rerow
    coloredICA:::amari_distance(Q1 = rerow(W1), Q2 = rerow(W2))
}




