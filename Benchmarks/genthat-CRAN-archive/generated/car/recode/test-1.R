

genthat_extracted_call <- function() {
    car:::recode(var = c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), recodes = "1:2='A'; 3='B'")
}




