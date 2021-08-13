

genthat_extracted_call <- function() {
    model <- genthat::with_env(function(x) {
        2 * x + 5 + rnorm(1, 0, 0.1)
    }, env = list2env(list(rnorm = stats::rnorm), parent = baseenv()))
    verbose <- FALSE
    use_seed <- FALSE
    seed_count <- 0
    progress_bar <- FALSE
    prior_test <- NULL
    prior <- list(list(sampling = genthat::with_env(function() {
        do.call(sampleName, as.list(as.numeric(sampleArgs)))
    }, env = list2env(list(sampleName = "runif", sampleArgs = c("1", "0", "1")), parent = baseenv())), density = genthat::with_env(function(value) {
        do.call(densityName, as.list(as.numeric(c(value, densityArgs))))
    }, env = list2env(list(densityName = "dunif", densityArgs = c("0", "1")), parent = baseenv())), isUniform = TRUE, sampleArgs = c("1", 
        "0", "1")))
    nb_simul <- 10
    EasyABC:::.ABC_rejection(model = model, prior = prior, prior_test = prior_test, nb_simul = nb_simul, use_seed = use_seed, 
        seed_count = seed_count, verbose = verbose, progress_bar = progress_bar)
}




