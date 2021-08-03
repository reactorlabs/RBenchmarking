library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 2
    boxesInRowNumbers <- 1
    boxesInRow <- "box1"
    boxCol <- structure(c(1, 2, 2), names = c("box1", "box2", "box3"))
    box.width <- c(32.4565714285714, 32.4565714285714, 32.4565714285714)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




