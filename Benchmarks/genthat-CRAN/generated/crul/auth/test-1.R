library(crul)

function_to_run <- function() {
    crul:::auth(user = "foo", pwd = "bar", auth = "ntlm")
}




