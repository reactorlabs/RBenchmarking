library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 3L
    boxesInRowNumbers <- 2
    boxesInRow <- "box2"
    boxCol <- structure(c(1, 2, 3), names = c("box1", "box2", "box3"))
    box.width <- c(27.1542857142857, 27.1542857142857, 27.1542857142857)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




