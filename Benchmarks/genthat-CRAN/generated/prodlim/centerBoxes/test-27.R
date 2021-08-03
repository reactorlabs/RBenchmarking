library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 3
    boxesInRowNumbers <- c(2, 3)
    boxesInRow <- c("box2", "box3")
    boxCol <- structure(c(2, 1, 3), names = c("box1", "box2", "box3"))
    box.width <- c(25.1588571428571, 25.1588571428571, 25.1588571428571)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




