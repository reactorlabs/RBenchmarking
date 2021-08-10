library(bindr)

function_to_run <- function() {
    bindr:::create_env(names = letters, fun = paste0, "-lowercase")
}




