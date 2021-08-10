library(circular)

function_to_run <- function() {
    data <- list(exp = structure(c(-20, -10, -10, -10, -10, -10, -10, -10, 0, 0), circularp = list(type = "angles", units = "degrees", 
        template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", "numeric")), 
        control = structure(c(-10, -10, -10, 0, 0, 0, 10, 10, 10, 20), circularp = list(type = "angles", units = "degrees", 
            template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", 
            "numeric")))
    circular:::watson.williams.test.list(x = data)
}




