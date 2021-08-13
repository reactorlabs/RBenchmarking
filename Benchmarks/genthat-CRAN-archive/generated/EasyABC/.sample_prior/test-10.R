library(EasyABC)

function_to_run <- function() {
    prior_test <- NULL
    prior <- list(list(sampling = genthat::with_env(function() {
        do.call(sampleName, as.list(as.numeric(sampleArgs)))
    }, env = list2env(list(sampleName = "runif", sampleArgs = c("1", "0", "1")), parent = baseenv())), density = genthat::with_env(function(value) {
        do.call(densityName, as.list(as.numeric(c(value, densityArgs))))
    }, env = list2env(list(densityName = "dunif", densityArgs = c("0", "1")), parent = baseenv())), isUniform = TRUE, sampleArgs = c("1", 
        "0", "1")))
    EasyABC:::.sample_prior(prior = prior, test = prior_test)
}




