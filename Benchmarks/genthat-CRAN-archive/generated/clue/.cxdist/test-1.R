

genthat_extracted_call <- function() {
    M_y <- structure(c(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1), .Dim = c(8L, 
        4L), .Dimnames = list(NULL, c("1", "2", "3", "4")), n_of_classes = 4L, is_cl_hard_partition = TRUE, class = "cl_membership")
    M_x <- structure(c(1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(8L, 
        4L), .Dimnames = list(NULL, c("1", "2", "3", "")), n_of_classes = 3L, is_cl_hard_partition = TRUE, class = "cl_membership")
    clue:::.cxdist(A = M_x, B = M_y, method = "manhattan")
}




