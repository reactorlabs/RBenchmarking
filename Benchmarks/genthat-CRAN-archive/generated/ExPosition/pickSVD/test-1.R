

genthat_extracted_call <- function() {
    k <- 0
    is.mds <- FALSE
    decomp.approach <- "svd"
    datain <- structure(c(-0.00170523117420651, -0.0184058194681095, 0.022517118019283, -0.0124118205464078, -0.031826998845202, 
        0.0489256266384696, -0.0143091224842979, -0.0240002463445496, -0.0339122266675558, 0.0320529525080912, 0.0483276694488332, 
        -0.0284322876736039, 0.0313765845700539, 0.0753998156436702, 0.0354561974602816, -0.046507049038164, -0.0509113429024663, 
        -0.0142891545470173), .Dim = c(6L, 3L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", 
        "Giraudoux"), c("PERIOD", "COMMA", "OTHER")))
    ExPosition:::pickSVD(datain = datain, is.mds = is.mds, decomp.approach = decomp.approach, k = k)
}




