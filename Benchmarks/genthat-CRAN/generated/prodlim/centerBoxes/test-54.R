library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 4L
    boxRow <- structure(c(1, 4, 1, 4), names = c("box1", "box2", "box3", "box4"))
    boxesInColumnNumbers <- c(1, 2)
    boxesInColumn <- c("box1", "box2")
    box.height <- c(9.41142857142857, 9.41142857142857, 9.41142857142857, 9.41142857142857)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




