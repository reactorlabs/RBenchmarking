

genthat_extracted_call <- function() {
    m2 <- structure(list(.Data = structure(c(0.92, 0.92, 0.89, 0.89, 0.12, 0.12, 0.09, 0.09, 0.12, 0.12, 0.11, 0.12, 0.1, 
        0.06, 0.06, 0.05, 0.05, 0.06, 0.06, 0.75, 0.75, 0.84, 0.84, 0.84, 0.84, 0.05, 0.04, 0.07, 0.05, 0.05, 0.03, 0.03, 
        0.05, 0.05, 0.13, 0.13, 0.07, 0.07, 0.04, 0.04, 0.84, 0.84, 0.83, 0.89, 0.89), n_of_classes = 3L, is_cl_hard_partition = FALSE, 
        class = "cl_membership", .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", "grandmother", "granddaughter", "grandson", 
            "brother", "sister", "father", "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"), c("1", 
            "2", "3"))), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", "cl_partition"))
    clue:::as.cl_hard_partition(x = m2)
}




