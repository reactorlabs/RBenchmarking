library(desc)

function_to_run <- function() {
    x <- structure(list(key = "Authors@R", value = "\n    c(person(given = \"Jo\", family = \"Doe\", email = \"jodoe@dom.ain\",\n      role = c(\"aut\", \"cre\")))"), 
        class = c("DescriptionAuthorsAtR", "DescriptionField"))
    desc:::parse_authors_at_r(x = x$value)
}




