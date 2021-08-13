

genthat_extracted_call <- function() {
    y <- structure(list(.Data = structure(c(0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 
        0, 1, 1, 1), n_of_classes = 2L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(15L, 2L), .Dimnames = list(c("grandfather", 
        "grandmother", "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", 
        "niece", "cousin", "aunt", "uncle"), c("a", "b"))), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", 
        "cl_partition"))
    x <- structure(list(.Data = structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 
        1, 1, 1, 1), n_of_classes = 2L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(15L, 2L), .Dimnames = list(c("grandfather", 
        "grandmother", "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", 
        "niece", "cousin", "aunt", "uncle"), c("a", "c"))), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", 
        "cl_partition"))
    clue:::.cl_agreement_partition_Rand(x = x, y = y)
}




