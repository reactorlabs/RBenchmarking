

genthat_extracted_call <- function() {
    tickmarks <- list(at = c(25, 30, 35, 40), labels = c("25", "30", "35", "40"))
    levs <- c("175", "185", "195", "205", "215", "225")
    effects:::ticksGrid(x = 1:length(levs), y = tickmarks$at)
}




