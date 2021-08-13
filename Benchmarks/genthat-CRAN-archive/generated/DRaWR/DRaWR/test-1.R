

genthat_extracted_call <- function() {
    DRaWR:::DRaWR(possetfile = system.file("extdata", "sample.setlist", package = "DRaWR"), unifile = system.file("extdata", 
        "sample.uni", package = "DRaWR"), networkfile = system.file("extdata", "sample.edge", package = "DRaWR"), outdir = "output_", 
        restarts = c(0.7), nfolds = 1, st2keep = 1, undirected = TRUE, unweighted = FALSE, normalize = "type", maxiters = 50, 
        thresh = 1e-04, property_types = c("T1", "T2"), writepreds = 0)
}




