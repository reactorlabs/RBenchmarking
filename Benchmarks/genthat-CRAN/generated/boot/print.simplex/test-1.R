

genthat_extracted_call <- function() {
    enj <- c(200, 6000, 3000, -200)
    fat <- c(800, 6000, 1000, 400)
    simplex <- boot::simplex
    vitx <- c(50, 3, 150, 100)
    vity <- c(10, 10, 75, 100)
    vitz <- c(150, 35, 75, 5)
    x <- structure(list(soln = structure(c(0, 0, 13.8, 0), names = c("x1", "x2", "x3", "x4")), solved = 1L, value = structure(41400, 
        names = "b"), A = structure(c(90, -0.799999999999999, -70, -50, -415, -5.99999999999999, -897, -440, 0, 1, 0, 0, 
        -25, -0.4, 40, 70, -0.075, -0.000999999999999999, -0.15, -0.075, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0), .Dim = c(4L, 
        8L)), a = c(2200, 12000, 0, 1400, 3, 0, 0, 0), basic = c(8, 3, 6, 7), maxi = TRUE, slack = 0, surplus = c(1470, 735, 
        485), obj = structure(c(200, 6000, 3000, -200), names = c("x1", "x2", "x3", "x4")), call = simplex(a = enj, A1 = fat, 
        b1 = 13800, A2 = rbind(vitx, vity, vitz), b2 = c(600, 300, 550), maxi = TRUE)), class = "simplex")
    boot:::print.simplex(x = x)
}




