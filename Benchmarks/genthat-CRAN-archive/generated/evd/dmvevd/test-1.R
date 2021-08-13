

genthat_extracted_call <- function() {
    asy <- list(0.4, 0, 0.6, c(0.3, 0.2), c(0.1, 0.1), c(0.4, 0.1), c(0.2, 0.4, 0.2))
    evd:::dmvevd(x = rep(0, 3), dep = c(0.6, 0.5, 0.8, 0.3), asy = asy, model = "alog", d = 3)
}




