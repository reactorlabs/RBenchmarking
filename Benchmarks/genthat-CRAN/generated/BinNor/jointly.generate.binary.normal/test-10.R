

genthat_extracted_call <- function() {
    var.nor <- c(4, 2)
    sigma.star <- list(sigma_star = structure(c(1, 0.270207865498775, 0.0507216168121563, 0.481855359715485, 0.270207865499108, 
        1, 0.184519478151653, 0.619458248080551, 0.0507216168121563, 0.184519478151653, 1, 0.68, 0.481855359715485, 0.619458248080551, 
        0.68, 1), .Dim = c(4L, 4L)), nonPD = NULL, PD = TRUE, eigenv = c(2.2182798548706, 0.978273457978314, 0.697817312241168, 
        0.105629374909921))
    prop.vec.bin <- c(0.4, 0.7)
    no.rows <- 100
    no.nor <- 2
    no.bin <- 2
    mean.vec.nor <- c(3, 1)
    BinNor:::jointly.generate.binary.normal(no.rows = no.rows, no.bin = no.bin, no.nor = no.nor, prop.vec.bin = prop.vec.bin, 
        mean.vec.nor = mean.vec.nor, var.nor = var.nor, sigma_star = sigma.star$sigma_star, continue.with.warning = TRUE)
}




