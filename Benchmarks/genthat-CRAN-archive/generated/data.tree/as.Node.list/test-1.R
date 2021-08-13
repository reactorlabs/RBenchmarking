library(data.tree)

function_to_run <- function() {
    nameName <- "name"
    mode <- "explicit"
    childrenName <- "children"
    childName <- 1L
    child <- list(name = "Joseph II", spouse = "Kathryn", born = "1839-03-28", died = "1865-12-19")
    check <- "check"
    data.tree:::as.Node.list(x = child, mode = mode, nameName = nameName, childrenName = childrenName, nodeName = childName, 
        check = check)
}




