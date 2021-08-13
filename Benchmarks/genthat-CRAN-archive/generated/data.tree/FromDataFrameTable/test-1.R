

genthat_extracted_call <- function() {
    x <- structure(list(levelName = c("Acme Inc.                       ", " ¦--Accounting                  ", " ¦   ¦--New Software            ", 
        " ¦   °--New Accounting Standards", " ¦--Research                    ", " ¦   ¦--New Product Line        ", 
        " ¦   °--New Labs                ", " °--IT                          ", "     ¦--Outsource               ", "     ¦--Go agile                ", 
        "     °--Switch to R             "), pathString = c("Acme Inc.", "Acme Inc./Accounting", "Acme Inc./Accounting/New Software", 
        "Acme Inc./Accounting/New Accounting Standards", "Acme Inc./Research", "Acme Inc./Research/New Product Line", "Acme Inc./Research/New Labs", 
        "Acme Inc./IT", "Acme Inc./IT/Outsource", "Acme Inc./IT/Go agile", "Acme Inc./IT/Switch to R"), p = c(NA, NA, 0.5, 
        0.75, NA, 0.25, 0.9, NA, 0.2, 0.05, 1), cost = c(NA, NA, 1e+06, 5e+05, NA, 2e+06, 750000, NA, 4e+05, 250000, 50000)), 
        row.names = c(NA, -11L), class = "data.frame")
    pathName <- "pathString"
    pathDelimiter <- "/"
    na.rm <- TRUE
    colLevels <- NULL
    data.tree:::FromDataFrameTable(table = x, pathName = pathName, pathDelimiter = pathDelimiter, colLevels = colLevels, 
        na.rm = na.rm)
}




