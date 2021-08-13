

genthat_extracted_call <- function() {
    x <- list(color = c("red", "green", "green", "green", "green", "yellow", "red", "yellow", "green", "red", "green", "yellow", 
        "red", "red", "green", "green", "yellow", "green", "red", "green", "green", "green", "green", "red"), year = structure(c(16436, 
        16436, 16071, 16436, 16436, 16071, 15706, 16071, 14975, 16071, 14975, 16436, 15340, 14975, 16071, 14975, 15340, 14975, 
        15706, 16071, 16071, 15706, 16071, 14975), class = "Date"))
    by <- 1:2
    data.table:::colnamesInt(x = x, cols = by, check_dups = FALSE)
}




