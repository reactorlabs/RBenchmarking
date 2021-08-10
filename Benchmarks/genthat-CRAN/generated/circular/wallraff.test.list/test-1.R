library(circular)

function_to_run <- function() {
    data <- list(control = structure(c(70, 80, 80, 85, 85, 90, 95, 95), circularp = list(type = "angles", units = "degrees", 
        template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", "numeric")), 
        experimental = structure(c(5, 5, 15, 55, 55, 65, 105, 120, 340), circularp = list(type = "angles", units = "degrees", 
            template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", 
            "numeric")))
    circular <- circular::circular
    circular:::wallraff.test.list(x = data, ref = circular(c(40, 40), units = "degrees", template = "geographics"))
}




