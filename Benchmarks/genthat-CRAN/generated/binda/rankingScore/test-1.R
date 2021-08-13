

genthat_extracted_call <- function() {
    mu <- structure(c(1, 0, 0, 0, 1, 1, 1, 1, 0.5, 1, 0, 0), .Dim = c(6L, 2L), .Dimnames = list(c("V1", "V2", "V3", "V4", 
        "V5", "V6"), c("Control", "Treatment")))
    L <- structure(c(2L, 2L, 1L, 1L), .Label = c("Control", "Treatment"), class = "factor")
    freqs <- structure(c(0.5, 0.5), names = c("Control", "Treatment"))
    binda:::rankingScore(mu = mu, freqs = freqs, tscores = TRUE, n = length(L))
}




