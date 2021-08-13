

genthat_extracted_call <- function() {
    leuk2 <- structure(list(time = c(1, 10, 22, 7, 3, 32, 12, 23, 8, 22, 17, 6, 2, 16, 11, 34, 8, 32, 12, 25, 2, 11, 5, 20, 
        4, 19, 15, 6, 8, 17, 23, 35, 5, 6, 11, 13, 4, 9, 1, 6, 8, 10), status = c(1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0), treatment = structure(c(2L, 
        1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L), .Label = c("6-MP", "placebo"), class = "factor"), pair = c(1L, 1L, 
        2L, 2L, 3L, 3L, 4L, 4L, 5L, 5L, 6L, 6L, 7L, 7L, 8L, 8L, 9L, 9L, 10L, 10L, 11L, 11L, 12L, 12L, 13L, 13L, 14L, 14L, 
        15L, 15L, 16L, 16L, 17L, 17L, 18L, 18L, 19L, 19L, 20L, 20L, 21L, 21L)), row.names = c(NA, -42L), class = "data.frame")
    bpcpfit <- bpcp::bpcpfit
    bpcp:::plot.kmciLRtidy(x = bpcpfit(Surv(time, status) ~ 1, data = leuk2))
}




