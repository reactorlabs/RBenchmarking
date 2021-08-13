library(data.table)

function_to_run <- function() {
    keyby <- FALSE
    byval <- list(year = structure(c(16436, 16436, 16071, 16436, 16436, 16071, 15706, 16071, 14975, 16071, 14975, 16436, 
        15340, 14975, 16071, 14975, 15340, 14975, 15706, 16071, 16071, 15706, 16071, 14975), class = "Date"))
    data.table:::forderv(x = byval, retGrp = TRUE, sort = keyby)
}




