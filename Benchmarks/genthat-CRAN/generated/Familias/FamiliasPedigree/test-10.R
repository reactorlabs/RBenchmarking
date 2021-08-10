library(Familias)

function_to_run <- function() {
    sex <- c("male", "female", "male")
    persons <- c("son", "mother", "AF")
    Familias:::FamiliasPedigree(id = persons, dadid = c(NA, NA, NA), momid = c("mother", NA, NA), sex = sex)
}




