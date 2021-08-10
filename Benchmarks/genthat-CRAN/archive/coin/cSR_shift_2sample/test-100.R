library(coin)

function_to_run <- function() {
    scores <- structure(c(0, 1), names = c("30", "266"))
    m <- 1L
    fact <- 1
    coin:::cSR_shift_2sample(scores = scores, m = m, fact = fact)
}




