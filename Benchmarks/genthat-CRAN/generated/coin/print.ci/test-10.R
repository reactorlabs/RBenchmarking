library(coin)

function_to_run <- function() {
    digits <- 7L
    conf.int <- structure(list(conf.int = structure(c(0.00902488537088713, 0.0146510189557749), conf.level = 0.99)), class = "ci")
    coin:::print.ci(x = conf.int, digits = digits)
}




