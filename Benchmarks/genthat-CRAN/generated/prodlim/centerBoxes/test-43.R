library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 1
    boxRow <- structure(c(1, 1), names = c("box1", "box2"))
    boxesInColumnNumbers <- 2
    boxesInColumn <- "box2"
    box.height <- c(4.70571428571429, 7.79142857142857)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




