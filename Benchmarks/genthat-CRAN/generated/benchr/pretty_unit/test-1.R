library(benchr)

function_to_run <- function() {
    xx <- structure(list(expr = structure(2:1, .Label = c("f()", "NULL"), class = "factor"), n.eval = c(1000, 1000), min = c(3, 
        149), lw.qu = c(6, 159), median = c(17, 167), mean = c(12.5, 795), up.qu = c(19, 174), max = c(41, 618000), total = c(12500, 
        795000), relative = c(1, 9.82)), row.names = c(NA, -2L), units = "ns", class = c("summaryBenchmark", "data.frame"))
    benchr:::pretty_unit(x = attr(xx, "units"))
}




