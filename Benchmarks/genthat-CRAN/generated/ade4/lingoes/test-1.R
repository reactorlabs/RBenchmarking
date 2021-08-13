

genthat_extracted_call <- function() {
    w <- structure(list(INRA5.133 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 2L, 0L), INRA5.137 = c(0L, 
        17L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 8L, 5L, 10L), INRA5.139 = c(5L, 18L, 10L, 16L, 21L, 20L, 
        10L, 12L, 6L, 27L, 15L, 22L, 26L, 12L, 13L, 17L, 8L, 26L), INRA5.141 = c(37L, 56L, 36L, 64L, 57L, 44L, 70L, 66L, 
        35L, 38L, 43L, 24L, 33L, 60L, 55L, 29L, 30L, 56L), INRA5.143 = c(32L, 9L, 32L, 20L, 20L, 36L, 16L, 12L, 21L, 35L, 
        2L, 54L, 41L, 23L, 32L, 4L, 6L, 5L), INRA5.145 = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 5L, 
        1L, 2L), INRA5.147 = c(0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L), INRA5.149 = c(0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L)), row.names = c("Baoule", "Borgou", "BPN", "Charolais", 
        "Holstein", "Jersey", "Lagunaire", "Limousin", "MaineAnjou", "Mtbeliard", "NDama", "Normand", "Parthenais", "Somba", 
        "Vosgienne", "ZChoa", "ZMbororo", "Zpeul"), class = "data.frame")
    dist.prop <- ade4::dist.prop
    ade4:::lingoes(distmat = dist.prop(w, 1))
}




