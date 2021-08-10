library(crunch)

function_to_run <- function() {
    iris <- datasets::iris
    crunch:::categoriesFromLevels(level_vect = levels(iris$Species))
}




