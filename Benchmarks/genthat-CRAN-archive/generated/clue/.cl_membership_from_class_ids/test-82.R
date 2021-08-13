

genthat_extracted_call <- function() {
    x <- structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), names = c("grandfather", "grandmother", 
        "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", "niece", "cousin", 
        "aunt", "uncle"), class = "cl_class_ids")
    k <- 3L
    cl_class_ids <- clue::cl_class_ids
    clue:::.cl_membership_from_class_ids(x = cl_class_ids(x), k = k)
}




