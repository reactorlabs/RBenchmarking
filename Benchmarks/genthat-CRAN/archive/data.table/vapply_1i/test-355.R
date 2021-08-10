library(data.table)

function_to_run <- function() {
    byval <- list(structure(c(16436, 16436, 16071, 16436, 16436, 16071, 15706, 16071, 14975, 16071, 14975, 16436, 15340, 
        14975, 16071, 14975, 15340, 14975, 15706, 16071, 16071, 15706, 16071, 14975), class = "Date"), structure(c(1L, 3L, 
        2L, 2L, 3L, 1L, 3L, 1L, 1L, 3L, 2L, 1L, 2L, 4L, 3L, 4L, 2L, 1L, 4L, 3L, 3L, 1L, 4L, 2L), .Label = c("active", "archived", 
        "inactive", "removed"), class = "factor"))
    data.table:::vapply_1i(x = byval, fun = length)
}




