

genthat_extracted_call <- function() {
    warpbreaks <- datasets::warpbreaks
    ffbase:::bySum(x = warpbreaks$breaks, by = warpbreaks$wool)
}




