library(conicfit)

function_to_run <- function() {
    XY <- structure(c(1, 2, 5, 7, 9, 3, 6, 8, 7, 6, 8, 7, 5, 7, 2, 4), .Dim = c(8L, 2L))
    ParTemp <- structure(c(2.59281223365698, 3.76871703893319, 6.64301364274727, 3.04415307925266, 3.50421605914221), .Dim = c(5L, 
        1L))
    conicfit:::ResidualsG(XY = XY, ParG = ParTemp)
}




