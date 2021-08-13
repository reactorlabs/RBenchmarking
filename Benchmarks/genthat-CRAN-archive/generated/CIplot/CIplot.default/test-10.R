

genthat_extracted_call <- function() {
    xlab <- "Differences in mean"
    xi <- structure(c(-5.77777777777779, -12.1284060517891, 0.572850496233573, 0.0736136689768648), .Dim = c(1L, 4L), .Dimnames = list("B-A", 
        c("diff", "lwr", "upr", "p adj")))
    v <- 0
    CIplot:::CIplot.default(x = xi, xlab = xlab, las = 1, v = v)
}




