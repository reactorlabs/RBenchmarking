library(DRR)

function_to_run <- function() {
    params <- list(sigma = 1, kernel = "rbfdot", lambda = 0.1, nblocks = 2)
    kpar <- list(sigma = 1)
    DRR:::get_kernel_fun(kernel = params$kernel, pars = kpar)
}




