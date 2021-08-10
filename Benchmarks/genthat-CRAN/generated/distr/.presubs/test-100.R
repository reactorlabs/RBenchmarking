library(distr)

function_to_run <- function() {
    xc <- discretePart(myLC)
    x <- .ext.1
    qparamstring <- "(3, 0.3)"
    paramstring <- "3, 0.3"
    nparamstring <- "size = 3, prob = 0.3"
    inx <- "Probability function of %C%Q"
    distr:::.presubs(inp = inx, frompat = c("%C", "%D", "%N", "%P", "%Q", "%A"), topat = c(as.character(class(x)[1]), as.character(date()), 
        nparamstring, paramstring, qparamstring, as.character(deparse(xc))))
}




