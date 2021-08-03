library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 2
    boxesInRowNumbers <- 3
    boxesInRow <- "box3"
    boxCol <- structure(c(1, 2, 2), names = c("box1", "box2", "box3"))
    box.width <- c(18.2982857142857, 18.2982857142857, 18.2982857142857)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




