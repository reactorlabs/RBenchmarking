

genthat_extracted_call <- function() {
    clus2 <- structure(c(1L, 1L, 1L, 3L, 2L, 2L, 2L, 2L, 2L, 2L), names = c("25", "29", "17", "123", "80", "85", "88", "74", 
        "111", "145"))
    clus1 <- structure(c(3L, 3L, 3L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), names = c("123", "111", "145", "25", "29", "17", "80", 
        "85", "88", "74"))
    dendextend:::FM_index(A1_clusters = clus1, A2_clusters = clus2, assume_sorted_vectors = TRUE)
}




