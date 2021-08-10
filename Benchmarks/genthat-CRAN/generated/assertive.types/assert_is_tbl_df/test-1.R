library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_tbl_df(x = dplyr::tbl_df(data.frame(x = 1:5)))
}




