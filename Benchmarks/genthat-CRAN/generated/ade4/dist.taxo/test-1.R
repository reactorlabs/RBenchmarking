

genthat_extracted_call <- function() {
    tax <- structure(list(genre = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 8L), .Label = c("g1", 
        "g2", "g3", "g4", "g5", "g6", "g7", "g8"), class = "factor"), famille = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 
        2L, 3L, 3L, 4L, 4L, 5L, 5L), .Label = c("fam1", "fam2", "fam3", "fam4", "fam5"), class = "factor"), ordre = structure(c(1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("ORD1", "ORD2"), class = "factor")), row.names = c("esp3", 
        "esp1", "esp2", "esp4", "esp5", "esp6", "esp7", "esp8", "esp9", "esp10", "esp11", "esp12", "esp13", "esp14", "esp15"), 
        class = c("data.frame", "taxo"))
    ade4:::dist.taxo(taxo = tax)
}




