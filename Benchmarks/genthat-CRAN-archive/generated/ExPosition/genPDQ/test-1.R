

genthat_extracted_call <- function() {
    mRP <- list(rowCenter = structure(c(0.297259344356402, 0.564217997671499, 0.138522657972099), names = c("PERIOD", "COMMA", 
        "OTHER")), masses = structure(c(0.0189297737255527, 0.139268648535985, 0.252206567103009, 0.396616445056707, 0.109440956215337, 
        0.0835376093634097), names = c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux")), weights = structure(c(3.36406581991595, 
        1.77236458979854, 7.21903560500132), names = c("PERIOD", "COMMA", "OTHER")), rowProfiles = structure(c(0.290501964855046, 
        0.270369007966702, 0.321705038093171, 0.28651406064488, 0.244805960961346, 0.389551147962398, 0.486097723733966, 
        0.515910728592952, 0.5134953893072, 0.60244816060613, 0.673949008643907, 0.490326537127112, 0.223400311410988, 0.213720263440345, 
        0.164799572599629, 0.111037778748989, 0.081245030394747, 0.12012231491049), .Dim = c(6L, 3L), .Dimnames = list(c("Rousseau", 
        "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"), c("PERIOD", "COMMA", "OTHER"))), deviations = structure(c(-0.00675737950135685, 
        -0.0268903363897003, 0.0244456937367686, -0.010745283711522, -0.0524533833950563, 0.0922918036059958, -0.0781202739375328, 
        -0.0483072690785464, -0.0507226083642992, 0.0382301629346314, 0.109731010972408, -0.0738914605443871, 0.0848776534388897, 
        0.0751976054682468, 0.0262769146275307, -0.0274848792231095, -0.0572776275773517, -0.0184003430616087), .Dim = c(6L, 
        3L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"), c("PERIOD", "COMMA", 
        "OTHER"))))
    k <- 0
    decomp.approach <- "svd"
    ExPosition:::genPDQ(datain = mRP$deviations, M = mRP$masses, W = mRP$weights, is.mds = FALSE, decomp.approach = decomp.approach, 
        k = k)
}




