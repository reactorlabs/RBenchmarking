

genthat_extracted_call <- function() {
    redgreen <- genthat::with_env(function(n) {
        x <- ramp(seq.int(0, 1, length.out = n))
        if (ncol(x) == 4L) 
            rgb(x[, 1L], x[, 2L], x[, 3L], x[, 4L], maxColorValue = 255)
        else rgb(x[, 1L], x[, 2L], x[, 3L], maxColorValue = 255)
    }, env = list2env(list(ramp = genthat::with_env(function(x) roundcolor(cbind(palette[[1L]](x), palette[[2L]](x), palette[[3L]](x), 
        if (alpha) palette[[4L]](x))) * 255, env = list2env(list(roundcolor = genthat::with_env(function(rgb) pmax(pmin(rgb, 
        1), 0), env = list2env(list(), parent = baseenv())), palette = list(genthat::with_env(function(v) .approxfun(x, y, 
        v, method, yleft, yright, f), env = list2env(list(yright = NA, yleft = NA, y = c(1, 0), x = c(0, 1), method = 1L, 
        f = 0, .approxfun = stats:::.approxfun), parent = baseenv())), genthat::with_env(function(v) .approxfun(x, y, v, 
        method, yleft, yright, f), env = list2env(list(yright = NA, yleft = NA, y = c(0, 0.803921568627451), x = c(0, 1), 
        method = 1L, f = 0, .approxfun = stats:::.approxfun), parent = baseenv())), genthat::with_env(function(v) .approxfun(x, 
        y, v, method, yleft, yright, f), env = list2env(list(yright = NA, yleft = NA, y = c(0, 0), x = c(0, 1), method = 1L, 
        f = 0, .approxfun = stats:::.approxfun), parent = baseenv()))), alpha = FALSE), parent = baseenv())), rgb = grDevices::rgb), 
        parent = baseenv()))
    dichromat:::dichromat(colours = redgreen(10), type = "tritan")
}




