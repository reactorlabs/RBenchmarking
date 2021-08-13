

genthat_extracted_call <- function() {
    sex <- c("male", "female", "male")
    persons <- c("son", "mother", "AF")
    Familias:::FamiliasPedigree(id = persons, dadid = c(NA, NA, NA), momid = c("mother", NA, NA), sex = sex)
}




