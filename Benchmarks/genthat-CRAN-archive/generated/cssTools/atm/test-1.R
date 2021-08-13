

genthat_extracted_call <- function() {
    sampled <- c(1, 4, 5)
    dSampled <- structure(c(0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 
        0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 
        1, 0, 1, 0, 1, 0), .Dim = c(5L, 5L, 3L))
    cssTools:::atm(d = dSampled, sampled = sampled, alpha = 0.2)
}




