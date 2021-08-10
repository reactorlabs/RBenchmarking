library(clue)

function_to_run <- function() {
    x <- structure(list(.Data = structure(c(0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 
        0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0), n_of_classes = 3L, is_cl_hard_partition = TRUE, class = "cl_membership", 
        .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", "grandmother", "granddaughter", "grandson", "brother", "sister", 
            "father", "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"), c("f", "m", "n"))), .Meta = list(n_of_objects = 15L)), 
        class = c("cl_partition_by_memberships", "cl_partition"))
    clue:::cl_object_labels(x = x)
}




