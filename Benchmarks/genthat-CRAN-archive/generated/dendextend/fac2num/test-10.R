

genthat_extracted_call <- function() {
    force_integer <- TRUE
    f_x <- structure(c(1L, 2L, 2L, 3L, 3L), names = c("Arkansas", "Arizona", "California", "Alabama", "Alaska"), .Label = c("1", 
        "2", "3"), class = "factor")
    dendextend:::fac2num(x = f_x, force_integer = force_integer)
}




