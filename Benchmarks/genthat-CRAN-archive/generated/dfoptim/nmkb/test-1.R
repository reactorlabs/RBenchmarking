

genthat_extracted_call <- function() {
    rosbkext <- genthat::with_env(function(x) {
        n <- length(x)
        sum(100 * (x[1:(n - 1)]^2 - x[2:n])^2 + (x[1:(n - 1)] - 1)^2)
    }, env = list2env(list(), parent = baseenv()))
    p0 <- c(-0.560475646552213, -0.23017748948328, 1.55870831414912, 0.070508391424576, 0.129287735160946, 1.71506498688328, 
        0.460916205989202, -1.26506123460653, -0.686852851893526, -0.445661970099958)
    dfoptim:::nmkb(par = p0, fn = rosbkext, lower = -2, upper = 2)
}




