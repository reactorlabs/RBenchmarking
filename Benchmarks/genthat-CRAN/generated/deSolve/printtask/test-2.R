library(deSolve)

function_to_run <- function() {
    jacvec <- genthat::with_env(function(time, Y, j, pars) {
        with(as.list(pars), {
            PDJ <- rep(0, n)
            if (j == 1) {
                PDJ[1] <- -rk1
                PDJ[2] <- rk1
            }
            else if (j == 2) {
                PDJ[2] <- -rk3 * Y[3] - rk15 * Y[12] - rk2
                PDJ[3] <- rk2 - rk3 * Y[3]
                PDJ[4] <- rk3 * Y[3]
                PDJ[5] <- rk15 * Y[12]
                PDJ[12] <- -rk15 * Y[12]
            }
            else if (j == 3) {
                PDJ[2] <- -rk3 * Y[2]
                PDJ[3] <- -rk5 - rk3 * Y[2] - rk7 * Y[10]
                PDJ[4] <- rk3 * Y[2]
                PDJ[6] <- rk7 * Y[10]
                PDJ[10] <- rk5 - rk7 * Y[10]
            }
            else if (j == 4) {
                PDJ[2] <- rk11 * rk14
                PDJ[3] <- rk11 * rk14
                PDJ[4] <- -rk11 * rk14 - rk4
                PDJ[9] <- rk4
            }
            else if (j == 5) {
                PDJ[2] <- rk19 * rk14
                PDJ[5] <- -rk19 * rk14 - rk16
                PDJ[9] <- rk16
                PDJ[12] <- rk19 * rk14
            }
            else if (j == 6) {
                PDJ[3] <- rk12 * rk14
                PDJ[6] <- -rk12 * rk14 - rk8
                PDJ[9] <- rk8
                PDJ[10] <- rk12 * rk14
            }
            else if (j == 7) {
                PDJ[7] <- -rk20 * rk14 - rk18
                PDJ[9] <- rk18
                PDJ[10] <- rk20 * rk14
                PDJ[12] <- rk20 * rk14
            }
            else if (j == 8) {
                PDJ[8] <- -rk13 * rk14 - rk10
                PDJ[10] <- rk13 * rk14
                PDJ[11] <- rk10
            }
            else if (j == 10) {
                PDJ[3] <- -rk7 * Y[3]
                PDJ[6] <- rk7 * Y[3]
                PDJ[7] <- rk17 * Y[12]
                PDJ[8] <- rk9
                PDJ[10] <- -rk7 * Y[3] - rk17 * Y[12] - rk6 - rk9
                PDJ[12] <- rk6 - rk17 * Y[12]
            }
            else if (j == 12) {
                PDJ[2] <- -rk15 * Y[2]
                PDJ[5] <- rk15 * Y[2]
                PDJ[7] <- rk17 * Y[10]
                PDJ[10] <- -rk17 * Y[10]
                PDJ[12] <- -rk15 * Y[2] - rk17 * Y[10]
            }
            return(PDJ)
        })
    }, env = list2env(list(rk4 = deSolve::rk4, n = 12), parent = baseenv()))
    func <- genthat::with_env(function(time, Y, pars) {
        with(as.list(pars), {
            dy[1] <- -rk1 * Y[1]
            dy[2] <- rk1 * Y[1] + rk11 * rk14 * Y[4] + rk19 * rk14 * Y[5] - rk3 * Y[2] * Y[3] - rk15 * Y[2] * Y[12] - rk2 * 
                Y[2]
            dy[3] <- rk2 * Y[2] - rk5 * Y[3] - rk3 * Y[2] * Y[3] - rk7 * Y[10] * Y[3] + rk11 * rk14 * Y[4] + rk12 * rk14 * 
                Y[6]
            dy[4] <- rk3 * Y[2] * Y[3] - rk11 * rk14 * Y[4] - rk4 * Y[4]
            dy[5] <- rk15 * Y[2] * Y[12] - rk19 * rk14 * Y[5] - rk16 * Y[5]
            dy[6] <- rk7 * Y[10] * Y[3] - rk12 * rk14 * Y[6] - rk8 * Y[6]
            dy[7] <- rk17 * Y[10] * Y[12] - rk20 * rk14 * Y[7] - rk18 * Y[7]
            dy[8] <- rk9 * Y[10] - rk13 * rk14 * Y[8] - rk10 * Y[8]
            dy[9] <- rk4 * Y[4] + rk16 * Y[5] + rk8 * Y[6] + rk18 * Y[7]
            dy[10] <- rk5 * Y[3] + rk12 * rk14 * Y[6] + rk20 * rk14 * Y[7] + rk13 * rk14 * Y[8] - rk7 * Y[10] * Y[3] - rk17 * 
                Y[10] * Y[12] - rk6 * Y[10] - rk9 * Y[10]
            dy[11] <- rk10 * Y[8]
            dy[12] <- rk6 * Y[10] + rk19 * rk14 * Y[5] + rk20 * rk14 * Y[7] - rk15 * Y[2] * Y[12] - rk17 * Y[10] * Y[12]
            return(list(dy))
        })
    }, env = list2env(list(rk4 = deSolve::rk4), parent = baseenv()))
    itask <- 1
    deSolve:::printtask(itask = itask, func = func, jacfunc = jacvec)
}




