library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_tbl_df(x = structure(list(x = 1:5), row.names = c(NA, -5L), class = c("tbl_df", "tbl", "data.frame")), 
        .xname = "dplyr::tbl_df(data.frame(x = 1:5))")
}




