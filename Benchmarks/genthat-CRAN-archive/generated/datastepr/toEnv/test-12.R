library(datastepr)

function_to_run <- function() {
    datastepr:::toEnv(object = environment(), environment = new.env())
}




