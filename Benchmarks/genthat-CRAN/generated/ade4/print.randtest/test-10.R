

genthat_extracted_call <- function() {
    as.randtest <- ade4::as.randtest
    rnorm <- stats::rnorm
    x0 <- 5.4
    l0 <- structure(list(obs = 5.4, alter = "greater", rep = 200L, expvar = structure(c(5.24276920591946, -0.057733497900361, 
        1.08368527082897), names = c("Std.Obs", "Expectation", "Variance")), pvalue = 0.00497512437810945, plot = list(hist = structure(list(breaks = c(-2.5, 
        -2, -1.5, -1, -0.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5), counts = c(6L, 14L, 18L, 25L, 47L, 31L, 29L, 17L, 7L, 4L, 1L, 
        1L), density = c(0.06, 0.14, 0.18, 0.25, 0.47, 0.31, 0.29, 0.17, 0.07, 0.04, 0.01, 0.01), mids = c(-2.25, -1.75, 
        -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25), xname = "sim", equidist = TRUE), class = "histogram"), 
        xlim = c(-3.11965334232061, 6.05831786713412)), call = as.randtest(sim = rnorm(200), obs = x0)), class = c("randtest", 
        "lightrandtest"))
    ade4:::print.randtest(x = l0)
}




