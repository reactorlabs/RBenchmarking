

genthat_extracted_call <- function() {
    y <- 1:8
    x <- 1:8
    row.labels <- c("f0", "f12", "f34", "f56", "f78", "f9a", "fbc", "fcd")
    grid <- TRUE
    col.labels <- c("age1", "age2", "age3", "age4", "age5", "age6", "age7", "age8")
    clabel.row <- 1.5
    clabel.col <- 1.5
    ade4:::table.prepare(x = x, y = y, row.labels = row.labels, col.labels = col.labels, clabel.row = clabel.row, clabel.col = clabel.col, 
        grid = grid, pos = "leftbottom")
}




