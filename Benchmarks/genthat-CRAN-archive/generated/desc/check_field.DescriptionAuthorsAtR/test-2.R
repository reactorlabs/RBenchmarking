

genthat_extracted_call <- function() {
    x <- structure(list(key = "Authors@R", value = "\n    c(person(given = \"Jo\", family = \"Doe\", email = \"jodoe@dom.ain\",\n      role = c(\"aut\", \"cre\")))"), 
        class = c("DescriptionAuthorsAtR", "DescriptionField"))
    desc:::check_field.DescriptionAuthorsAtR(x = x)
}




