library(clue)

function_to_run <- function() {
    B <- structure(list(.Data = structure(c(1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 
        0, 0, 0, 0, 0, 0, 0, 1, 1), n_of_classes = 5L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(7L, 
        5L), .Dimnames = list(NULL, c("1", "2", "3", "4", "5"))), .Meta = list(n_of_objects = 7L)), class = c("cl_partition_by_memberships", 
        "cl_partition"))
    A <- structure(list(.Data = structure(c(1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 
        1, 1), n_of_classes = 4L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(7L, 4L), .Dimnames = list(NULL, 
        c("1", "2", "3", "5"))), .Meta = list(n_of_objects = 7L)), class = c("cl_partition_by_memberships", "cl_partition"))
    clue:::cl_meet(x = A, y = B)
}




