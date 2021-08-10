library(ECOSolveR)

function_to_run <- function() {
    G <- structure(list(i = c(1L, 2L, 3L, 8L, 1L, 2L, 3L, 9L, 4L, 5L, 6L, 10L, 4L, 5L, 6L, 11L, 7L), j = c(1L, 1L, 1L, 1L, 
        2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 5L), v = c(0.416757847405471, 2.13619609566845, 1.79343558519486, 
        -1, 0.056266827226329, -1.64027080840499, 0.841747365656204, -1, 0.416757847405471, 2.13619609566845, 1.79343558519486, 
        -1, 0.056266827226329, -1.64027080840499, 0.841747365656204, -1, -1), nrow = 11L, ncol = 5L, dimnames = NULL), class = "simple_triplet_matrix")
    ECOSolveR:::make_csc_matrix.simple_triplet_matrix(x = G)
}




