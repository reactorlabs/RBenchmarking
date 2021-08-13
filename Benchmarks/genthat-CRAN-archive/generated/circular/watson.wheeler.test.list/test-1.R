

genthat_extracted_call <- function() {
    x2 <- structure(c(75, 80, 90, 100, 110, 130, 135, 140, 150, 160, 165), circularp = list(type = "angles", units = "degrees", 
        template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", "numeric"))
    x1 <- structure(c(35, 45, 50, 55, 60, 70, 85, 95, 105, 120), circularp = list(type = "angles", units = "degrees", template = "geographics", 
        modulo = "asis", zero = 1.5707963267949, rotation = "clock"), class = c("circular", "numeric"))
    circular:::watson.wheeler.test.list(x = list(x1, x2))
}




