library(yaml)

argv <- commandArgs(trailingOnly = TRUE)

n_iterations <- 50

times <- double(n_iterations)

function_to_run <- function() {
    yaml:::as.yaml(x = 1:10)
}

for (i in 1:n_iterations) {
    t0 <- Sys.time()
    function_to_run()
    times[[i]] <- Sys.time() - t0
}

if (length(argv) > 0) {
    saveRDS(times, argv[[1]])
} else {
    times
}


