library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 3L
    boxRow <- structure(c(3, 1, 3), names = c("box1", "box2", "box3"))
    boxesInColumnNumbers <- 1
    boxesInColumn <- "box1"
    box.height <- c(9.41142857142857, 9.41142857142857, 9.41142857142857)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




