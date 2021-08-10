library(ffbase)

function_to_run <- function() {
    warpbreaks <- datasets::warpbreaks
    ffbase:::bySum(x = warpbreaks$breaks, by = warpbreaks$wool)
}




