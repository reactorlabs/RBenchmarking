

genthat_extracted_call <- function() {
    y <- c(4.5, 5.4, 6.1, 6.1, 5.4, 5, 4.1, 5.5)
    x <- c(7.8, 6.6, 6.5, 7.4, 7.3, 7, 6.4, 7.1, 6.7, 7.6, 6.8)
    sd <- stats::sd
    BSDA:::tsum.test(mean.x = mean(x), s.x = sd(x), n.x = 11, mean.y = mean(y), s.y = sd(y), n.y = 8, mu = 2)
}




