

genthat_extracted_call <- function() {
    x <- c(62L, 72L, 75L, 55L, 64L, 21L, 64L, 80L, 67L, 72L, 42L, 76L, 76L, 41L, 48L, 76L, 53L, 60L, 42L, 78L, 29L, 48L, 
        55L, 29L, 21L, 47L, 81L, 36L, 22L, 44L, 15L, 7L, 42L, 9L, 21L, 21L, 16L, 16L, 9L, 14L, 12L, 17L, 7L, 34L, 8L)
    args <- list(bw = genthat::with_env(function(x) {
        if (length(x) < 2L) stop("need at least 2 data points")
        hi <- sd(x)
        if (!(lo <- min(hi, IQR(x)/1.34))) (lo <- hi) || (lo <- abs(x[1L])) || (lo <- 1)
        0.9 * lo * length(x)^(-0.2)
    }, env = getNamespace("stats")), adjust = 1, kernel = genthat::with_env(function(x, mean = 0, sd = 1, log = FALSE) .Call(C_dnorm, 
        x, mean, sd, log), env = getNamespace("stats")), na.rm = TRUE)
    car:::adaptiveKernel(x = x, kernel = args$kernel, bw = args$bw, adjust = args$adjust, na.rm = args$na.rm)
}




