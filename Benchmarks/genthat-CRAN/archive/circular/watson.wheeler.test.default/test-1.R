library(circular)

function_to_run <- function() {
    x <- structure(c(35, 45, 50, 55, 60, 70, 85, 95, 105, 120, 75, 80, 90, 100, 110, 130, 135, 140, 150, 160, 165), names = c("11", 
        "12", "13", "14", "15", "16", "17", "18", "19", "110", "21", "22", "23", "24", "25", "26", "27", "28", "29", "210", 
        "211"), class = c("circular", "numeric"), circularp = list(type = "angles", units = "degrees", template = "geographics", 
        modulo = "asis", zero = 1.5707963267949, rotation = "clock"))
    group <- c("1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2")
    circular:::watson.wheeler.test.default(x = x, group = group)
}




