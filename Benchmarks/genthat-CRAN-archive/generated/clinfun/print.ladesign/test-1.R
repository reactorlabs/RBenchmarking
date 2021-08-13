

genthat_extracted_call <- function() {
    x <- structure(list(group.size = c(9, 7, 9), odds.ratio = c(2, 4), statistic = "Jonckheere-Terpstra", alternative = "one.sided", 
        sig.level = 0.05, power = 0.771475), class = "ladesign")
    clinfun:::print.ladesign(x = x)
}




