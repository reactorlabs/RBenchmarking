library(effects)

function_to_run <- function() {
    y <- c(1.82742049102017, 1.76437318879011, 1.66980223544502, 1.57523128209992, 1.51218397986986)
    x <- structure(c(0, 20, 50, 80, 100), class = "AsIs")
    use.splines <- TRUE
    upper <- c(2.81474687513423, 2.43015973089095, 2.04364414995559, 2.23006111324336, 2.48722109144853)
    lower <- c(0.840094106906116, 1.09858664668927, 1.29596032093444, 0.920401450956476, 0.537146868291186)
    good <- c(TRUE, TRUE, TRUE, TRUE, TRUE)
    band.transparency <- 0.15
    band.colors <- c("#0080ff", "#ff00ff", "darkgreen", "#ff0000", "orange", "#00ff00", "brown")
    effects:::panel.bands(x = x[good], y = y[good], upper = upper[good], lower = lower[good], fill = band.colors[1], alpha = band.transparency, 
        use.splines = use.splines)
}




