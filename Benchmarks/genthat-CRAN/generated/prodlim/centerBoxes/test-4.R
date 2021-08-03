library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 3
    boxRow <- structure(c(2, 1, 2, 3), names = c("box1", "box2", "box3", "box4"))
    boxesInColumnNumbers <- c(2, 3, 4)
    boxesInColumn <- c("box2", "box3", "box4")
    box.height <- c(9.41142857142857, 9.41142857142857, 9.41142857142857, 9.41142857142857)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




