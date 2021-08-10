library(CIplot)

function_to_run <- function() {
    x <- structure(list(tension = structure(c(-10, -14.7222222222222, -4.72222222222222, -19.3534207268435, -24.0756429490658, 
        -14.0756429490658, -0.646579273156464, -5.36880149537869, 4.63119850462131, 0.0336262189113791, 0.00112178771703253, 
        0.447421021431458), .Dim = 3:4, .Dimnames = list(c("M-L", "H-L", "H-M"), c("diff", "lwr", "upr", "p adj"))), wool = structure(c(-5.77777777777779, 
        -12.1284060517891, 0.572850496233573, 0.0736136689768648), .Dim = c(1L, 4L), .Dimnames = list("B-A", c("diff", "lwr", 
        "upr", "p adj")))), class = c("TukeyHSD", "multicomp"), orig.call = aov(formula = breaks ~ tension + wool, data = warpbreaks), 
        conf.level = 0.95, ordered = FALSE)
    CIplot:::CIplot.TukeyHSD(x = x, las = 1)
}




