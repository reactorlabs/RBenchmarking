

genthat_extracted_call <- function() {
    x <- structure(c(NA, 3L, 2L), .Label = c("morning", "afternoon", "night"), class = "factor", contrasts = "contr.ltfr")
    contrasts <- TRUE
    caret:::contr.ltfr(n = levels(x), contrasts = contrasts)
}




