

genthat_extracted_call <- function() {
    refs <- list(character(0), "@ref(tab:foo)")
    ref_table <- structure("1", names = "tab:foo")
    i <- 2L
    bookdown:::ref_to_number(ref = refs[[i]], ref_table = ref_table, backslash = FALSE)
}




