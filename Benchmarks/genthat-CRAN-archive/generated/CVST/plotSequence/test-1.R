

genthat_extracted_call <- function() {
    st <- structure(list(a1 = 3.48832074362489, a0 = 1.77720773426123, b = 0.651167925637511, piH0 = 0.5, piH1 = 0.7841411680701, 
        alpha = 0.01, beta = 0.1, steps = 10), class = "CVST.sequentialTest")
    s <- c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L)
    CVST:::plotSequence(st = st, s = s)
}




