

genthat_extracted_call <- function() {
    p2 <- 3
    p1 <- -2
    names <- c("b", "c", "d", "e")
    fixed <- c(NA, NA, NA, NA)
    drc:::fplogistic(p1 = p1, p2 = p2, fixed = fixed, names = names, fctName = paste(as.character(match.call()[[1]]), "(", 
        p1, ",", p2, ")", sep = ""))
}




