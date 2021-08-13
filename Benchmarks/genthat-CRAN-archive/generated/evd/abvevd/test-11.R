

genthat_extracted_call <- function() {
    model <- "amix"
    beta <- structure(0, names = "beta")
    alpha <- structure(0.921799668311595, names = "alpha")
    evd:::abvevd(alpha = alpha, beta = beta, model = model)
}




