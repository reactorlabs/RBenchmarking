library(catdap)

function_to_run <- function() {
    Titanic <- datasets::Titanic
    catdap:::catdap1c(ctable = Titanic, response.names = "Survived")
}




