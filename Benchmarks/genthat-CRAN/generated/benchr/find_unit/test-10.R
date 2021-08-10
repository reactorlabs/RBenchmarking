library(benchr)

function_to_run <- function() {
    x <- structure(list(expr = structure(1:5, .Label = c("rchisq(100, 0)", "rchisq(100, 1)", "rchisq(100, 2)", "rchisq(100, 3)", 
        "rchisq(100, 5)"), class = "factor"), n.eval = c(1000, 1000, 1000, 1000, 1000), min = c(2.655e-06, 8.889e-06, 8.894e-06, 
        7.725e-06, 7.37e-06), lw.qu = c(2.981e-06, 1.07825e-05, 1.1297e-05, 1.087575e-05, 1.08425e-05), median = c(4.45e-06, 
        1.176e-05, 1.22505e-05, 1.1886e-05, 1.18035e-05), mean = c(4.132695e-06, 1.171842e-05, 1.2338405e-05, 1.1959037e-05, 
        1.2021191e-05), up.qu = c(4.59325e-06, 1.2394e-05, 1.32615e-05, 1.2875e-05, 1.301725e-05), max = c(1.2825e-05, 2.0155e-05, 
        2.1034e-05, 2.1465e-05, 2.5491e-05), total = c(0.004132695, 0.01171842, 0.012338405, 0.011959037, 0.012021191), relative = c(1, 
        2.64, 2.75, 2.67, 2.65)), row.names = c(NA, -5L), units = "s", class = c("summaryBenchmark", "data.frame"))
    time_intervals <- benchr:::time_intervals
    from <- "s"
    cols <- c("min", "lw.qu", "median", "mean", "up.qu", "max", "total")
    benchr:::find_unit(x = unlist(x[cols]) * time_intervals[from])
}




