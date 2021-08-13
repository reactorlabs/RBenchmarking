

genthat_extracted_call <- function() {
    lmorigin.ex2 <- structure(list(NSI = c(0.04152, 0, 0.01716, 0, 0.16553, 0.45859, 0.1847, 0, 0, -0.08754, 0.11719, 0.1612, 
        0.25614, 0.12913, 0.09254, 0.11082, 0.01401), MaxHostSize = c(0.00405, 0, 0.03023, 0, 0.09463, -0.20256, -0.11613, 
        0.09224, -0.03719, -0.08257, -0.02669, -0.00904, -0.07076, -0.08901, -0.04756, -0.00829, 0.04786)), class = "data.frame", 
        row.names = c("Contrast.1", "Contrast.2", "Contrast.3", "Contrast.4", "Contrast.5", "Contrast.6", "Contrast.7", "Contrast.8", 
            "Contrast.9", "Contrast.10", "Contrast.11", "Contrast.12", "Contrast.13", "Contrast.14", "Contrast.15", "Contrast.16", 
            "Contrast.Root"))
    ape:::lmorigin(formula = NSI ~ MaxHostSize, data = lmorigin.ex2, origin = TRUE, nperm = 99)
}




