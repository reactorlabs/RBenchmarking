library(prodlim)

function_to_run <- function() {
    Xlim <- 100
    ncol <- 2
    boxesInRowNumbers <- 4
    boxesInRow <- "box4"
    boxCol <- structure(c(1, 2, 2, 2), names = c("box1", "box2", "box3", "box4"))
    box.width <- c(17.4342857142857, 17.4342857142857, 17.4342857142857, 17.4342857142857)
    prodlim:::centerBoxes(border = Xlim, len = box.width[boxesInRowNumbers], ncell = ncol, pos = boxCol[boxesInRow])
}




