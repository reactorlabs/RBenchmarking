library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 2
    boxesInRowNumbers <- c(1, 2)
    boxesInRow <- c("box1", "box2")
    boxCol <- structure(c(1, 2), names = c("box1", "box2"))
    box.width <- c(20.376, 33.6548571428571)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




