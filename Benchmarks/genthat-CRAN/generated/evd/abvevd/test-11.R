library(evd)

function_to_run <- function() {
    model <- "amix"
    beta <- structure(0, names = "beta")
    alpha <- structure(0.921799668311595, names = "alpha")
    evd:::abvevd(alpha = alpha, beta = beta, model = model)
}




