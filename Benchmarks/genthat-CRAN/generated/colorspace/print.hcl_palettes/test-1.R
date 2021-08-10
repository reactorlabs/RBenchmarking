library(colorspace)

function_to_run <- function() {
    x <- structure(list(type = structure(1L, .Label = c("Qualitative", "Sequential (single-hue)", "Sequential (multi-hue)", 
        "Diverging"), class = "factor"), h1 = 0, h2 = NA_real_, c1 = 50, c2 = NA_real_, l1 = 60, l2 = NA_real_, p1 = NA_real_, 
        p2 = NA_real_, cmax = NA_real_, fixup = TRUE), row.names = "Dark 2", class = c("hcl_palettes", "data.frame"))
    colorspace:::print.hcl_palettes(x = x)
}




