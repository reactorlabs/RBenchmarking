library(circlize)

function_to_run <- function() {
    x2 <- c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)
    space <- "sRGB"
    l <- c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE)
    i <- 2L
    colors <- structure(c(0, 1, 1, 0, 1, 0, 1, 1, 0), .Dim = c(3L, 3L), .Dimnames = list(NULL, c("red", "green", "blue")))
    breaks <- c(0, 0.5, 1)
    circlize:::.get_color(x = x2[l], break1 = breaks[i], break2 = breaks[i + 1], col1 = colors[i, ], col2 = colors[i + 1, 
        ], space = space)
}




