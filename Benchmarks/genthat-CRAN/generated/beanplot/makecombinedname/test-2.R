library(beanplot)

function_to_run <- function() {
    names <- c("0.5", "1", "VC.1", "OJ.1", "VC.2", "OJ.2")
    i <- 3L
    beanplot:::makecombinedname(string1 = names[i * 2 - 1], string2 = names[i * 2])
}




