library(boot)

function_to_run <- function() {
    vitz <- c(150, 35, 75, 5)
    vity <- c(10, 10, 75, 100)
    vitx <- c(50, 3, 150, 100)
    fat <- c(800, 6000, 1000, 400)
    enj <- c(200, 6000, 3000, -200)
    boot:::simplex(a = enj, A1 = fat, b1 = 13800, A2 = rbind(vitx, vity, vitz), b2 = c(600, 300, 550), maxi = TRUE)
}




