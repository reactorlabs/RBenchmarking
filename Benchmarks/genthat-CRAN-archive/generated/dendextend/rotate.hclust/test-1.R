

genthat_extracted_call <- function() {
    dist <- stats::dist
    hclust <- stats::hclust
    USArrests <- datasets::USArrests
    hc <- structure(list(merge = structure(c(-1L, -2L, -4L, -5L, -3L, 1L, 2L, 3L), .Dim = c(4L, 2L)), height = c(28.4548765592121, 
        44.8008162247113, 71.9624675420893, 176.539460641984), order = c(5L, 4L, 2L, 1L, 3L), labels = c("Alabama", "Colorado", 
        "Illinois", "Maryland", "Minnesota"), method = "average", call = hclust(d = dist(USArrests[c(1, 6, 13, 20, 23), ]), 
        method = "ave"), dist.method = "euclidean"), class = "hclust")
    dendextend:::rotate.hclust(x = hc, order = c(2:5, 1))
}




