library(assertive.files)

function_to_run <- function() {
    assertive.files:::assert_all_are_dirs(x = R.home())
}




