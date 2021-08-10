library(clue)

function_to_run <- function() {
    x <- structure(list(`1975` = structure(list(.Data = structure(c(0.72, 0.04, 0.99, 0.59, 0.04, 0.98, 0.38, 0.11, 0.01, 
        0.96, 0.85, 0.82, 0.46, 0.63, 0.88, 0.06, 0.92, 0.94, 0.91, 0.61, 0.64, 0.28, 0.96, 0.01, 0.41, 0.96, 0.02, 0.62, 
        0.89, 0.99, 0.04, 0.15, 0.18, 0.54, 0.37, 0.12, 0.94, 0.08, 0.06, 0.09, 0.39, 0.36), n_of_classes = 2L, is_cl_hard_partition = FALSE, 
        class = "cl_membership", .Dim = c(21L, 2L), .Dimnames = list(c("Argentina", "Bolivia", "Canada", "Chile", "Egypt", 
            "France", "Greece", "India", "Indonesia", "Italy", "Japan", "Norway", "Portugal", "South Africa", "Spain", "Sudan", 
            "Sweden", "U.K.", "U.S.A.", "Uruguay", "Venezuela"), c("1", "2"))), .Meta = list(n_of_objects = 21L)), class = c("cl_partition_by_memberships", 
        "cl_partition")), `1980` = structure(list(.Data = structure(c(0.02, 0.07, 0.94, 0.04, 0.12, 0.99, 0.13, 0.02, 0.11, 
        0.87, 0.77, 0.93, 0.18, 0.04, 0.26, 0.02, 0.93, 0.71, 0.95, 0.06, 0.01, 0.97, 0.16, 0.05, 0.94, 0.5, 0.01, 0.69, 
        0.04, 0.33, 0.11, 0.18, 0.05, 0.69, 0.94, 0.68, 0.04, 0.05, 0.24, 0.04, 0.91, 0.98, 0.01, 0.77, 0.01, 0.02, 0.38, 
        0, 0.18, 0.94, 0.56, 0.02, 0.05, 0.02, 0.13, 0.02, 0.06, 0.94, 0.02, 0.05, 0.01, 0.03, 0.01), n_of_classes = 3L, 
        is_cl_hard_partition = FALSE, class = "cl_membership", .Dim = c(21L, 3L), .Dimnames = list(c("Argentina", "Bolivia", 
            "Canada", "Chile", "Egypt", "France", "Greece", "India", "Indonesia", "Italy", "Japan", "Norway", "Portugal", 
            "South Africa", "Spain", "Sudan", "Sweden", "U.K.", "U.S.A.", "Uruguay", "Venezuela"), c("1", "2", "3"))), .Meta = list(n_of_objects = 21L)), 
        class = c("cl_partition_by_memberships", "cl_partition")), `1985` = structure(list(.Data = structure(c(0.32, 0.07, 
        1, 0.36, 0, 0.99, 0.13, 0.15, 0.22, 0.98, 0.89, 0.91, 0.48, 0.41, 0.71, 0.16, 0.95, 0.92, 0.96, 0.24, 0.48, 0.68, 
        0.93, 0, 0.64, 1, 0.01, 0.87, 0.85, 0.78, 0.02, 0.11, 0.09, 0.52, 0.59, 0.29, 0.84, 0.05, 0.08, 0.04, 0.76, 0.52), 
        n_of_classes = 2L, is_cl_hard_partition = FALSE, class = "cl_membership", .Dim = c(21L, 2L), .Dimnames = list(c("Argentina", 
            "Bolivia", "Canada", "Chile", "Egypt", "France", "Greece", "India", "Indonesia", "Italy", "Japan", "Norway", 
            "Portugal", "South Africa", "Spain", "Sudan", "Sweden", "U.K.", "U.S.A.", "Uruguay", "Venezuela"), c("1", "2"))), 
        .Meta = list(n_of_objects = 21L)), class = c("cl_partition_by_memberships", "cl_partition")), `1990` = structure(list(.Data = structure(c(0.04, 
        0.09, 0.98, 0.09, 0.17, 1, 0.12, 0.01, 0.14, 0.94, 0.84, 0.97, 0.36, 0.03, 0.49, 0.07, 0.97, 0.8, 0.88, 0.02, 0.07, 
        0.93, 0.29, 0.02, 0.87, 0.31, 0, 0.71, 0.02, 0.22, 0.05, 0.11, 0.02, 0.47, 0.95, 0.43, 0.14, 0.02, 0.17, 0.09, 0.96, 
        0.89, 0.03, 0.62, 0, 0.04, 0.52, 0, 0.17, 0.97, 0.64, 0.01, 0.05, 0.01, 0.17, 0.02, 0.08, 0.79, 0.01, 0.03, 0.03, 
        0.02, 0.04), n_of_classes = 3L, is_cl_hard_partition = FALSE, class = "cl_membership", .Dim = c(21L, 3L), .Dimnames = list(c("Argentina", 
        "Bolivia", "Canada", "Chile", "Egypt", "France", "Greece", "India", "Indonesia", "Italy", "Japan", "Norway", "Portugal", 
        "South Africa", "Spain", "Sudan", "Sweden", "U.K.", "U.S.A.", "Uruguay", "Venezuela"), c("1", "2", "3"))), .Meta = list(n_of_objects = 21L)), 
        class = c("cl_partition_by_memberships", "cl_partition")), `1995` = structure(list(.Data = structure(c(0.77, 0.01, 
        0.99, 0.7, 0.02, 0.98, 0.21, 0.09, 0.24, 1, 0.88, 0.93, 0.78, 0.72, 0.95, 0.13, 0.95, 0.99, 0.95, 0.62, 0.75, 0.23, 
        0.99, 0.01, 0.3, 0.98, 0.02, 0.79, 0.91, 0.76, 0, 0.12, 0.07, 0.22, 0.28, 0.05, 0.87, 0.05, 0.01, 0.05, 0.38, 0.25), 
        n_of_classes = 2L, is_cl_hard_partition = FALSE, class = "cl_membership", .Dim = c(21L, 2L), .Dimnames = list(c("Argentina", 
            "Bolivia", "Canada", "Chile", "Egypt", "France", "Greece", "India", "Indonesia", "Italy", "Japan", "Norway", 
            "Portugal", "South Africa", "Spain", "Sudan", "Sweden", "U.K.", "U.S.A.", "Uruguay", "Venezuela"), c("1", "2"))), 
        .Meta = list(n_of_objects = 21L)), class = c("cl_partition_by_memberships", "cl_partition"))), class = c("cl_partition_ensemble", 
        "cl_ensemble"), n_of_objects = 21L)
    clue:::print.cl_partition_ensemble(x = x)
}




