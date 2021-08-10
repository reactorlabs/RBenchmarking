library(CVST)

function_to_run <- function() {
    nsine <- structure(list(x = structure(c(28.7394794570769, 29.4390923427618, 8.98933860386378, 26.0892816124419, 20.1610300762843, 
        16.3078802029545, 23.1406043799709, 4.23067592566241, 20.6400215299153, 22.1502634583535), .Dim = c(10L, 1L)), y = structure(c(1L, 
        1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L), .Label = c("FALSE", "TRUE"), class = "factor")), class = "CVST.data")
    CVST:::isRegression(data = nsine)
}




