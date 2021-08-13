

genthat_extracted_call <- function() {
    link.arr.length <- structure(c(0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4), 
        .Dim = c(3L, 6L), .Dimnames = list(c("S1", "S2", "S3"), c("E1", "E2", "E3", "E4", "E5", "E6")))
    df <- structure(list(rn = c("S1", "S2", "S3", "S1", "S2", "S3", "S1", "S2", "S3", "S1", "S2", "S3", "S1", "S2", "S3", 
        "S1", "S2", "S3"), cn = c("E1", "E1", "E1", "E2", "E2", "E2", "E3", "E3", "E3", "E4", "E4", "E4", "E5", "E5", "E5", 
        "E6", "E6", "E6"), ri = c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), ci = c(1L, 1L, 
        1L, 2L, 2L, 2L, 3L, 3L, 3L, 4L, 4L, 4L, 5L, 5L, 5L, 6L, 6L, 6L), value = c(4, 7, 9, 14, 1, 10, 13, 6, 3, 17, 8, 16, 
        5, 12, 11, 2, 15, 18)), class = "data.frame", row.names = c(NA, -18L))
    circlize:::psubset(mat = link.arr.length, ri = df$ri, ci = df$ci)
}




