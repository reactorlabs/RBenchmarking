library(diagram)

function_to_run <- function() {
    M <- structure(c("0", "f1", "f1", "0", "0", "0", "0", "f1", "0", "0", "0", "f1", "0", "0", "0", "0"), .Dim = c(4L, 4L))
    col <- structure(c("red", "blue", "blue", "red", "red", "red", "red", "red", "red", "red", "red", "red", "red", "red", 
        "red", "red"), .Dim = c(4L, 4L))
    diagram:::plotmat(A = M, pos = c(1, 2, 1), curve = 0, name = 1:4, lwd = 1, box.type = "circle", box.prop = 1, box.lwd = 2, 
        arr.lcol = col, arr.col = col, box.cex = 1:4, cex.txt = 0.8, main = "plotmat")
}




