library(prodlim)

function_to_run <- function() {
    Ylim <- 100
    nrow <- 3L
    boxRow <- structure(c(3, 1, 3), names = c("box1", "box2", "box3"))
    boxesInColumnNumbers <- 2
    boxesInColumn <- "box2"
    box.height <- c(15.5828571428571, 15.5828571428571, 15.5828571428571)
    prodlim:::centerBoxes(border = Ylim, len = box.height[boxesInColumnNumbers], ncell = nrow, pos = boxRow[boxesInColumn])
}




