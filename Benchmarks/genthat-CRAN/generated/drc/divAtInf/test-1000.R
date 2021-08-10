library(drc)

function_to_run <- function() {
    xPowerp <- 0.0269664274747673
    f <- 2
    drc:::divAtInf(x = xPowerp, y = (1 + xPowerp)^f)
}




