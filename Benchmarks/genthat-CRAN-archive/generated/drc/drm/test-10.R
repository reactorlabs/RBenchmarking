

genthat_extracted_call <- function() {
    lettuce <- drc::lettuce
    CRS.5a <- drc::CRS.5a
    drc:::drm(formula = lettuce[, c(2, 1)], fct = CRS.5a())
}




