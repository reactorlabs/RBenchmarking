

genthat_extracted_call <- function() {
    Sigma <- structure(c(12.0126119156892, 0, 0, 15.0270631872919), .Dim = c(2L, 2L))
    N <- 100L
    mu <- c(0.867954479877742, -2.37374983441288)
    b <- NULL
    A <- NULL
    CEoptim:::rtmvnorm(N = N, mu = mu, sigma = Sigma, A = A, b = b)
}




