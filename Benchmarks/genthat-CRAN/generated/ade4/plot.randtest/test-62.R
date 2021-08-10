library(ade4)

function_to_run <- function() {
    as.randtest <- ade4::as.randtest
    rnorm <- stats::rnorm
    x0 <- 20.4
    l0 <- structure(list(obs = 20.4, alter = "greater", rep = 200L, expvar = structure(c(22.0953439786886, -0.128019362524105, 
        0.863162498204549), names = c("Std.Obs", "Expectation", "Variance")), pvalue = 0.00497512437810945, plot = list(hist = structure(list(breaks = c(-3.5, 
        -3, -2.5, -2, -1.5, -1, -0.5, 0, 0.5, 1, 1.5, 2, 2.5), counts = c(1L, 0L, 4L, 10L, 23L, 32L, 36L, 42L, 32L, 13L, 
        6L, 1L), density = c(0.01, 0, 0.04, 0.1, 0.23, 0.32, 0.36, 0.42, 0.32, 0.13, 0.06, 0.01), mids = c(-3.25, -2.75, 
        -2.25, -1.75, -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25), xname = "sim", equidist = TRUE), class = "histogram"), 
        xlim = c(-3.62431331165544, 21.0063806322375)), call = as.randtest(sim = rnorm(200), obs = x0)), class = c("randtest", 
        "lightrandtest"))
    ade4:::plot.randtest(x = l0, main = paste("p.value = ", round(l0$pvalue, dig = 5)))
}




