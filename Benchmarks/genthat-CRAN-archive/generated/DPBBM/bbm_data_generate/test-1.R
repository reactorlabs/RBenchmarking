

genthat_extracted_call <- function() {
    S <- 4
    prob <- c(1, 1, 1)
    nb_size <- 0.8
    nb_mu <- 100
    K <- 3
    G <- 100
    DPBBM:::bbm_data_generate(S = S, G = G, K = K, prob = prob, alpha_band = c(2, 6), beta_band = c(2, 6), nb_mu = nb_mu, 
        nb_size = nb_size, plotf = TRUE, max_cor = 0.5)
}




