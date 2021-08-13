

genthat_extracted_call <- function() {
    warn <- FALSE
    assume_sorted_vectors <- TRUE
    A2_clusters <- structure(c(1L, 1L, 1L, 4L, 3L, 2L, 2L, 2L, 2L, 2L), names = c("25", "29", "17", "123", "80", "85", "88", 
        "74", "111", "145"))
    A1_clusters <- structure(c(4L, 3L, 3L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), names = c("123", "111", "145", "25", "29", "17", 
        "80", "85", "88", "74"))
    dendextend:::FM_index_R(A1_clusters = A1_clusters, A2_clusters = A2_clusters, assume_sorted_vectors = assume_sorted_vectors, 
        warn = warn)
}




