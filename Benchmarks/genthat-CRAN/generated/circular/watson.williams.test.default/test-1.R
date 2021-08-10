library(circular)

function_to_run <- function() {
    x <- structure(c(-20, -10, -10, -10, -10, -10, -10, -10, 0, 0, -10, -10, -10, 0, 0, 0, 10, 10, 10, 20), names = c("exp1", 
        "exp2", "exp3", "exp4", "exp5", "exp6", "exp7", "exp8", "exp9", "exp10", "control1", "control2", "control3", "control4", 
        "control5", "control6", "control7", "control8", "control9", "control10"), class = c("circular", "numeric"), circularp = list(type = "angles", 
        units = "degrees", template = "geographics", modulo = "asis", zero = 1.5707963267949, rotation = "clock"))
    group <- c("exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "exp", "control", "control", "control", "control", 
        "control", "control", "control", "control", "control", "control")
    circular:::watson.williams.test.default(x = x, group = group)
}




