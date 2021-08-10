library(distr)

function_to_run <- function() {
    grid <- graphics::grid
    pF <- list(grid(5, 5), grid(3, 3), grid(4, 4))
    l.draw <- 3L
    distr:::.fillList(list0 = pF, len = l.draw)
}




