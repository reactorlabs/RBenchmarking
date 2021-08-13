library(circular)

function_to_run <- function() {
    y <- structure(c(0.160392567145533, 5.93298970854724, 5.73958746436715, 0.141124128982286, 0.305607642311092, 0.34496195359016, 
        0.280007947394327, 0.599323372278679, 0.00383883590317955, 5.81499962088791), circularp = list(type = "angles", units = "radians", 
        template = "none", modulo = "asis", zero = 0, rotation = "counter"), class = c("circular", "numeric"))
    circular:::plot.circular(x = y)
}




