

genthat_extracted_call <- function() {
    w_m <- c(0.333333333333333, 0.333333333333333, 0.333333333333333)
    sample_cov <- structure(c(47.8724257262388, -7.44368426784728, 1.12588108819525, -7.44368426784728, 49.2447088946176, 
        -1.33405907899221, 1.12588108819525, -1.33405907899221, 54.0458860852145), .Dim = c(3L, 3L), .Dimnames = list(c("1", 
        "2", "3"), c("1", "2", "3")))
    returns_freq <- 52
    Agamma <- structure(0.12869052684732, .Dim = c(1L, 1L))
    BLModel:::.equilibrium_mean_elliptic(MCov = sample_cov/returns_freq, MarketPortfolio = w_m, MarketPriceOfRisk = Agamma[1, 
        1])
}




