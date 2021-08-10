library(DT)

function_to_run <- function() {
    iris <- datasets::iris
    DT:::tableFooter(names = iris)
}




