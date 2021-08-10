library(crunch)

function_to_run <- function() {
    crunch:::VarDef(name = "Integers", values = 1:5, type = "numeric", description = "When creating variable definitions with 'values', you must\n    specify 'type', and categorical variables will require 'categories'.")
}




