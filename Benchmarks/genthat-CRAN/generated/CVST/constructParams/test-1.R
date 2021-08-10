library(CVST)

function_to_run <- function() {
    CVST:::constructParams(kernel = "rbfdot", sigma = 10^(-3:3), nu = c(0.05, 0.1, 0.2, 0.3))
}




