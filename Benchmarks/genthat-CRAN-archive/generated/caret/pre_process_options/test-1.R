

genthat_extracted_call <- function() {
    method <- c("center", "scale")
    column_types <- structure(c("numeric", "numeric", "numeric", "numeric"), names = c("Sepal.Length", "Sepal.Width", "Petal.Length", 
        "Petal.Width"))
    caret:::pre_process_options(opts = method, vars = column_types)
}




