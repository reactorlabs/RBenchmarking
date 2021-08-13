

genthat_extracted_call <- function() {
    x <- structure(c(3.5, 5, 9), names = c("old", "new", "iter"))
    caret:::safs_prob(old = x["old"], new = x["new"], iteration = x["iter"])
}




