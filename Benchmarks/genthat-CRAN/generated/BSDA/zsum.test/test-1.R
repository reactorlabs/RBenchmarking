

genthat_extracted_call <- function() {
    y <- c(4.5, 5.4, 6.1, 6.1, 5.4, 5, 4.1, 5.5)
    x <- c(7.8, 6.6, 6.5, 7.4, 7.3, 7, 6.4, 7.1, 6.7, 7.6, 6.8)
    BSDA:::zsum.test(mean.x = mean(x), sigma.x = 0.5, n.x = 11, mean.y = mean(y), sigma.y = 0.5, n.y = 8, conf.level = 0.9)
}




