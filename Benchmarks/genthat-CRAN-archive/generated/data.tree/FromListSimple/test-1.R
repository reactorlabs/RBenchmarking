

genthat_extracted_call <- function() {
    kingJosephs <- list(spouse = "Mary", born = "1818-02-23", died = "1839-08-29", `Joseph II` = list(spouse = "Kathryn", 
        born = "1839-03-28", died = "1865-12-19"), Helen = list(born = "1840-17-08", died = "1845-01-01"))
    data.tree:::FromListSimple(simpleList = kingJosephs, nodeName = "Joseph I")
}




