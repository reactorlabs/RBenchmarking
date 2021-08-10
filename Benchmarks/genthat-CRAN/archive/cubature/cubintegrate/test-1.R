library(cubature)

function_to_run <- function() {
    I.1d_v <- genthat::with_env(function(x) {
        matrix(apply(x, 2, function(z) sin(4 * z) * z * ((z * (z * (z * z - 4) + 1) - 1))), ncol = ncol(x))
    }, env = list2env(list(), parent = baseenv()))
    cubature:::cubintegrate(f = I.1d_v, lower = -2, upper = 2, method = "hcubature", nVec = 2L)
}




