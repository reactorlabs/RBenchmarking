

genthat_extracted_call <- function() {
    x <- structure(c(70, 80, 80, 85, 85, 90, 95, 95, 5, 5, 15, 55, 55, 65, 105, 120, 340), names = c("control1", "control2", 
        "control3", "control4", "control5", "control6", "control7", "control8", "experimental1", "experimental2", "experimental3", 
        "experimental4", "experimental5", "experimental6", "experimental7", "experimental8", "experimental9"), class = c("circular", 
        "numeric"), circularp = list(type = "angles", units = "degrees", template = "geographics", modulo = "asis", zero = 1.5707963267949, 
        rotation = "clock"))
    ref <- structure(c(40, 40), circularp = list(type = "angles", units = "degrees", template = "geographics", modulo = "asis", 
        zero = 1.5707963267949, rotation = "clock"), class = c("circular", "numeric"))
    group <- structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("control", "experimental"), 
        class = "factor")
    circular:::wallraff.test.default(x = x, group = group, ref = ref)
}




