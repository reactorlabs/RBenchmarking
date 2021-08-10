library(data.table)

function_to_run <- function() {
    x <- list(NAME = "DT", NROW = 5L, NCOL = 2L, MB = 0, COLS = list(c("A", "B")), KEY = list("B"), INDICES = NULL)
    nd <- list(vnames = c("NAME", "NROW", "NCOL", "MB", "COLS", "KEY", "INDICES"), .named = c(TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE))
    keep.rownames <- FALSE
    check.names <- FALSE
    data.table:::as.data.table.list(x = x, keep.rownames = keep.rownames, check.names = check.names, .named = nd$.named)
}




