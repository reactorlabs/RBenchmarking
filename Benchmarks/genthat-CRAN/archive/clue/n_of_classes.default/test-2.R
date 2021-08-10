library(clue)

function_to_run <- function() {
    x <- structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), names = c("grandfather", "grandmother", 
        "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", "niece", "cousin", 
        "aunt", "uncle"), class = "cl_class_ids")
    clue:::n_of_classes.default(x = x)
}




