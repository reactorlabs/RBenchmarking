library(assertive.reflection)

function_to_run <- function() {
    assertive.reflection:::r_can_find_tools(tools = c("latex", "pdflatex"))
}




