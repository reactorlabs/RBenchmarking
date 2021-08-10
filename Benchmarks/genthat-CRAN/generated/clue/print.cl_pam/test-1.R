library(clue)

function_to_run <- function() {
    x <- structure(list(cluster = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L), class = "cl_class_ids"), medoid_ids = c(37L, 67L, 85L), prototypes = structure(list(structure(list(.Data = structure(c(1, 
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 1, 1), n_of_classes = 8L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(15L, 8L), .Dimnames = list(c("grandfather", 
        "grandmother", "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", 
        "niece", "cousin", "aunt", "uncle"), c("a", "b", "c", "d", "e", "f", "g", "h"))), .Meta = list(n_of_objects = 15L)), 
        class = c("cl_partition_by_memberships", "cl_partition")), structure(list(.Data = structure(c(1, 1, 1, 1, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 
        0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0), n_of_classes = 4L, is_cl_hard_partition = TRUE, class = "cl_membership", 
        .Dim = c(15L, 4L), .Dimnames = list(c("grandfather", "grandmother", "granddaughter", "grandson", "brother", "sister", 
            "father", "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"), c("a", "b", "c", "d"))), 
        .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", "cl_partition")), structure(list(.Data = structure(c(0, 
        1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 1, 0, 0), n_of_classes = 3L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", 
        "grandmother", "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", 
        "niece", "cousin", "aunt", "uncle"), c("f", "m", "n"))), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", 
        "cl_partition"))), class = c("cl_partition_ensemble", "cl_ensemble"), n_of_objects = 15L), criterion = 661, description = "symmetric difference distance"), 
        class = "cl_pam")
    clue:::print.cl_pam(x = x)
}




