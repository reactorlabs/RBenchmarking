library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 4L
    boxesInRowNumbers <- c(1, 3)
    boxesInRow <- c("box1", "box3")
    boxCol <- structure(c(1, 1, 4, 4), names = c("box1", "box2", "box3", "box4"))
    box.width <- c(29.7205714285714, 29.7205714285714, 29.7205714285714, 29.7205714285714)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




