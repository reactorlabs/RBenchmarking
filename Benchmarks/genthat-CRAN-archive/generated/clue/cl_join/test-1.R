library(clue)

function_to_run <- function() {
    y <- structure(list(.Data = structure(c(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 
        0, 0, 0, 0, 1, 1), n_of_classes = 4L, is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(8L, 4L), .Dimnames = list(NULL, 
        c("1", "2", "3", "4"))), .Meta = list(n_of_objects = 8L)), class = c("cl_partition_by_memberships", "cl_partition"))
    x <- structure(list(.Data = structure(c(1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0), n_of_classes = 3L, 
        is_cl_hard_partition = TRUE, class = "cl_membership", .Dim = c(8L, 3L), .Dimnames = list(NULL, c("1", "2", "3"))), 
        .Meta = list(n_of_objects = 8L)), class = c("cl_partition_by_memberships", "cl_partition"))
    clue:::cl_join(x = x, y = y)
}




