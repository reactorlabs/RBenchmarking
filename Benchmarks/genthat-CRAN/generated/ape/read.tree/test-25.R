library(ape)

function_to_run <- function() {
    z <- "(('a: France, Spain (Europe)',b),'c: Australia [Outgroup]');"
    ape:::read.tree(text = z)
}




