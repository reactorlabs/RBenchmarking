

genthat_extracted_call <- function() {
    auth <- crul::auth
    crul:::set_auth(x = auth(user = "foo", pwd = "bar", auth = "basic"))
}




