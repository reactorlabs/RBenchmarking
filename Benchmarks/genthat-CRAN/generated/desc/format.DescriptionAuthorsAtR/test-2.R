library(desc)

function_to_run <- function() {
    private <- list2env(list(notws = character(0), path = NULL, data = list(Package = structure(list(key = "Package", value = "{{ Package }}"), 
        class = c("DescriptionPackage", "DescriptionField")), Title = structure(list(key = "Title", value = "{{ Title }}"), 
        class = c("DescriptionTitle", "DescriptionField")), Version = structure(list(key = "Version", value = "1.0.0"), class = c("DescriptionVersion", 
        "DescriptionField")), `Authors@R` = structure(list(key = "Authors@R", value = "\n    c(person(given = \"Jo\", family = \"Doe\", email = \"jodoe@dom.ain\",\n      role = c(\"aut\", \"cre\")))"), 
        class = c("DescriptionAuthorsAtR", "DescriptionField")), Maintainer = structure(list(key = "Maintainer", value = "{{ Maintainer }}"), 
        class = c("DescriptionMaintainer", "DescriptionField")), Description = structure(list(key = "Description", value = "{{ Description }}"), 
        class = c("DescriptionDescription", "DescriptionField")), License = structure(list(key = "License", value = "{{ License }}"), 
        class = c("DescriptionLicense", "DescriptionField")), LazyData = structure(list(key = "LazyData", value = "true"), 
        class = c("DescriptionLogical", "DescriptionField")), URL = structure(list(key = "URL", value = "{{ URL }}"), class = c("DescriptionURLList", 
        "DescriptionField")), BugReports = structure(list(key = "BugReports", value = "{{ BugReports }}"), class = c("DescriptionURL", 
        "DescriptionField")), Encoding = structure(list(key = "Encoding", value = "UTF-8"), class = c("DescriptionEncoding", 
        "DescriptionField")))), parent = emptyenv())
    mode <- "screen"
    col <- "Authors@R"
    desc:::format.DescriptionAuthorsAtR(x = private$data[[col]], mode = mode)
}




