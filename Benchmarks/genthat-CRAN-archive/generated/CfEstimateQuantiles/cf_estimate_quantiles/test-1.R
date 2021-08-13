

genthat_extracted_call <- function() {
    probabilities <- c(0.01, 0.06, 0.11, 0.16, 0.21, 0.26, 0.31, 0.36, 0.41, 0.46, 0.51, 0.56, 0.61, 0.66, 0.71, 0.76, 0.81, 
        0.86, 0.91, 0.96)
    cumulants <- c(1, 1, 2, 6, 24, 120, 720, 5040)
    cf_order <- 8
    CfEstimateQuantiles:::cf_estimate_quantiles(cf_expansion_order = cf_order, probabilities = probabilities, cumulants = cumulants)
}




