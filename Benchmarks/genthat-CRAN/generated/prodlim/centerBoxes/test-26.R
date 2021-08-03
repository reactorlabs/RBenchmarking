library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 2
    boxesInRowNumbers <- 2
    boxesInRow <- "box2"
    boxCol <- structure(c(1, 2, 2), names = c("box1", "box2", "box3"))
    box.width <- c(21.1577142857143, 21.1577142857143, 21.1577142857143)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




