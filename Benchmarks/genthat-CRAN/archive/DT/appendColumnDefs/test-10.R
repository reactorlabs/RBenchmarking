library(DT)

function_to_run <- function() {
    options <- list(columnDefs = list(list(className = "dt-right", targets = c(1, 2))), order = list(), autoWidth = FALSE, 
        orderClasses = FALSE)
    DT:::appendColumnDefs(options = options, def = list(orderable = FALSE, targets = 0))
}




