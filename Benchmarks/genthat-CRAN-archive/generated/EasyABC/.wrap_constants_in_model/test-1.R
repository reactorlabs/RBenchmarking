

genthat_extracted_call <- function() {
    model <- genthat::with_env(function(x) {
        2 * x + 5 + rnorm(1, 0, 0.1)
    }, env = list2env(list(rnorm = stats::rnorm), parent = baseenv()))
    use_seed <- FALSE
    prior <- list(c("unif", "0", "1"))
    EasyABC:::.wrap_constants_in_model(prior = prior, model = model, use_seed = use_seed)
}




