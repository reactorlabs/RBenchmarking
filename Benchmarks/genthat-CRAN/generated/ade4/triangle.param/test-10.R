

genthat_extracted_call <- function() {
    ta <- structure(c(0.032, 0.079, 0.206, 0.092, 0.32, 0.206, 0.155, 0.062, 0.054, 0.313, 0.061, 0.028, 0.028, 0.059, 0.161, 
        0.073, 0.285, 0.157, 0.109, 0.04, 0.049, 0.217, 0.053, 0.025, 0.027, 0.037, 0.083, 0.046, 0.198, 0.109, 0.065, 0.024, 
        0.037, 0.133, 0.029, 0.019, 0.359, 0.319, 0.372, 0.368, 0.297, 0.32, 0.381, 0.392, 0.33, 0.348, 0.444, 0.39, 0.291, 
        0.282, 0.32, 0.313, 0.281, 0.287, 0.331, 0.33, 0.255, 0.348, 0.409, 0.309, 0.275, 0.262, 0.299, 0.266, 0.225, 0.286, 
        0.317, 0.233, 0.229, 0.31, 0.347, 0.268, 0.609, 0.602, 0.422, 0.54, 0.383, 0.474, 0.464, 0.546, 0.616, 0.339, 0.495, 
        0.582, 0.681, 0.659, 0.519, 0.614, 0.434, 0.556, 0.56, 0.63, 0.696, 0.435, 0.538, 0.666, 0.698, 0.701, 0.618, 0.688, 
        0.577, 0.605, 0.618, 0.743, 0.734, 0.557, 0.624, 0.713), .Dim = c(36L, 3L), .Dimnames = list(c("Belgium1", "Denmark1", 
        "Spain1", "France1", "Greece1", "Ireland1", "Italy1", "Luxembourg1", "Netherlands1", "Portugal1", "Germany1", "United_Kingdom1", 
        "Belgium2", "Denmark2", "Spain2", "France2", "Greece2", "Ireland2", "Italy2", "Luxembourg2", "Netherlands2", "Portugal2", 
        "Germany2", "United_Kingdom2", "Belgium3", "Denmark3", "Spain3", "France3", "Greece3", "Ireland3", "Italy3", "Luxembourg3", 
        "Netherlands3", "Portugal3", "Germany3", "United_Kingdom3"), c("pri", "sec", "ter")))
    scale <- TRUE
    min3 <- NULL
    max3 <- NULL
    ade4:::triangle.param(ta = ta, scale = scale, min3 = min3, max3 = max3)
}




