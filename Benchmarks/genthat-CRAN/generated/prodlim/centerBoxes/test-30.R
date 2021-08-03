library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 2
    boxRow <- structure(c(1, 2, 2), names = c("box1", "box2", "box3"))
    boxesInColumnNumbers <- 1
    boxesInColumn <- "box1"
    box.height <- c(15.5828571428571, 15.5828571428571, 15.5828571428571)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




