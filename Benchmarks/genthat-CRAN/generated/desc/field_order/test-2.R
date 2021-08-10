library(desc)

function_to_run <- function() {
    cols <- c("Package", "Title", "Version", "Authors@R", "Maintainer", "Description", "License", "LazyData", "URL", "BugReports", 
        "Encoding")
    desc:::field_order(fields = cols)
}




