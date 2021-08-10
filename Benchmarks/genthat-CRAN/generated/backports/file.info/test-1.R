library(backports)

function_to_run <- function() {
    backports:::file.info(file.path(R.home(), "COPYING"), extra_cols = FALSE)
}




