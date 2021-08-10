library(ClustMMDD)

function_to_run <- function() {
    vectDim <- c(909L, 909L, 909L, 909L, 909L, 909L, 909L, 909L, 909L, 747L, 747L, 528L, 382L, 382L, 382L, 382L, 382L, 382L, 
        382L, 382L, 382L, 382L, 346L, 346L, 346L, 346L, 346L, 346L, 346L, 346L, 346L, 346L, 346L, 310L, 310L, 310L, 310L, 
        310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 
        310L, 310L, 310L, 310L, 310L, 310L, 310L, 310L, 255L, 255L, 255L, 255L, 255L, 255L, 255L, 164L, 164L, 164L, 164L, 
        164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 164L, 127L, 127L, 127L)
    h <- 5
    BeginEnd2 <- 70:71
    BeginEnd1 <- c(8L, 12L)
    ClustMMDD:::dimJump_Rcpp(vectDim = vectDim, pas = h, BeginEnd1 = BeginEnd1, BeginEnd2 = BeginEnd2)
}




