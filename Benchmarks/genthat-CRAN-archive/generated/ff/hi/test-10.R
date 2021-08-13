

genthat_extracted_call <- function() {
    vw <- NULL
    pack <- FALSE
    ffdim <- c(4L, 5L, 3L)
    d <- 2L
    ff:::hi(from = 1, to = ffdim[[d]], maxindex = ffdim[[d]], vw = vw[, d], pack = pack)
}




