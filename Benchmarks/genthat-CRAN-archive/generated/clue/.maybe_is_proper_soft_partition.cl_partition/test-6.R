

genthat_extracted_call <- function() {
    x <- structure(list(.Data = structure(c(0.88, 0.99, 0.93, 0.8, 0, 0.1, 0.01, 0.12, 0.14, 0.02, 0.01, 0.1, 0, 0.07, 0, 
        0.11, 0.01, 0.05, 0.18, 0.99, 0.89, 0.93, 0.81, 0.86, 0.98, 0.13, 0.04, 0.07, 0, 0.08, 0.01, 0, 0.02, 0.02, 0.01, 
        0.01, 0.06, 0.07, 0, 0, 0.86, 0.86, 0.93, 0.93, 0.92), n_of_classes = 3L, is_cl_hard_partition = FALSE, class = "cl_membership", 
        .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", "grandmother", "granddaughter", "grandson", "brother", "sister", 
            "father", "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"), c("1", "2", "3"))), .Meta = list(n_of_objects = 15L)), 
        class = c("cl_partition_by_memberships", "cl_partition"))
    clue:::.maybe_is_proper_soft_partition.cl_partition(x = x)
}




