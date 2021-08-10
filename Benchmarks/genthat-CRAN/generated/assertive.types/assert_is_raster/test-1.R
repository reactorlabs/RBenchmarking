library(assertive.types)

function_to_run <- function() {
    m <- structure(c("#C54E6D", "#E16A86", "#FE86A1", "#FFA2BC", "#C54E6D", "#E16A86", "#FE86A1", "#FFA2BC", "#C54E6D", "#E16A86", 
        "#FE86A1", "#FFA2BC", "#C54E6D", "#E16A86", "#FE86A1", "#FFA2BC", "#C54E6D", "#E16A86", "#FE86A1", "#FFA2BC"), .Dim = 4:5)
    as.raster <- grDevices::as.raster
    assertive.types:::assert_is_raster(x = as.raster(m))
}




