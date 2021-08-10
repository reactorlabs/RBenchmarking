library(ade4)

function_to_run <- function() {
    x <- structure(list(Alt = c(1, 1, 1, 1, 1, 1), Das = c(2, 4, 5, 5, 5, 5), Pen = c(6, 4, 5, 6, 5, 4), Smm = c(1, 3, 4, 
        3, 4, 5), Qmm = c(0, 2, 3, 3, 0, 3), Vme = c(1, 6, 5, 9, 1, 2)), row.names = c("87", "88", "89", "90", "91", "92"), 
        class = "data.frame")
    dudi.pca <- ade4::dudi.pca
    ade4:::t.dudi(x = dudi.pca(x, scann = FALSE))
}




