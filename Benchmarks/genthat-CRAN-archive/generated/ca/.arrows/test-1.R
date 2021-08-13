

genthat_extracted_call <- function() {
    x <- structure(c(-0.504562430073899, -0.148252701610603, -0.129523261530591, 0.835347769112486, 0.214820455078942, -0.032666345452605, 
        -0.319642396033267, 0.0695793367659946), .Dim = c(4L, 2L), .Dimnames = list(c("Black", "Brown", "Red", "Blond"), 
        c("Dim1", "Dim2")))
    lwd <- 1
    col.x <- "blue"
    ca:::.arrows(rep(0, length(x[, 1])), rep(0, length(x[, 1])), x[, 1], x[, 2], col = col.x, lwd = lwd, length = 0.1)
}




