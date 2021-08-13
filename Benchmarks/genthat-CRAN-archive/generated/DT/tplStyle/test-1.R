

genthat_extracted_call <- function() {
    rownames <- TRUE
    names <- c(" ", "Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")
    i <- 1
    DT:::tplStyle(cols = i, valueCols = "Sepal.Length", target = "cell", styles = list(fontWeight = structure("isNaN(parseFloat(value)) ? '' : value <= 5 ? \"bold\" : \"weight\"", 
        class = "JS_EVAL")), names, rownames)
}




