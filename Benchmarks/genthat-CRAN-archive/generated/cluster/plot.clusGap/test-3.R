

genthat_extracted_call <- function() {
    sk <- c(0.5, 0.5, 1, 0.5, 0.5, 1.5, 0.5, 0.5)
    fk <- c(2, 3, 5, 4, 7, 8, 5, 4)
    cluster:::plot.clusGap(x = structure(class = "clusGap", list(Tab = cbind(gap = fk, SE.sim = sk))))
}




