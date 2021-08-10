library(feather)

function_to_run <- function() {
    feather_example <- feather::feather_example
    feather:::read_feather(path = feather_example("mtcars.feather"))
}




