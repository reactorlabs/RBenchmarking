library(crul)

function_to_run <- function() {
    auth <- crul::auth
    crul:::set_auth(x = auth(user = "foo", pwd = "bar", auth = "basic"))
}




