library(Familias)

function_to_run <- function() {
    mypedigrees <- list(isFather = structure(list(id = c("mother", "daughter", "AF"), findex = c(0L, 3L, 0L), mindex = c(0L, 
        1L, 0L), sex = c("female", "female", "male")), class = "FamiliasPedigree"), unrelated = structure(list(id = c("mother", 
        "daughter", "AF", "TF"), findex = c(0L, 4L, 0L, 0L), mindex = c(0L, 1L, 0L, 0L), sex = c("female", "female", "male", 
        "male")), class = "FamiliasPedigree"), isUncle = structure(list(id = c("mother", "daughter", "AF", "TF", "gf", "gm"), 
        findex = c(0L, 4L, 5L, 5L, 0L, 0L), mindex = c(0L, 1L, 6L, 6L, 0L, 0L), sex = c("female", "female", "male", "male", 
            "male", "female")), class = "FamiliasPedigree"))
    granddad <- structure(list(id = c("mother", "daughter", "AF", "TF", "gm"), findex = c(0L, 4L, 0L, 3L, 0L), mindex = c(0L, 
        1L, 0L, 5L, 0L), sex = c("female", "female", "male", "male", "female")), class = "FamiliasPedigree")
    Familias:::FamiliasPrior(pedigrees = c(mypedigrees, list(granddad)), maxGenerations = 1)
}




