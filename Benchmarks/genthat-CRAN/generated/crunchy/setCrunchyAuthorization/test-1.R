library(crunchy)

function_to_run <- function() {
    shinyUser <- crunchy::shinyUser
    email <- crunch::email
    crunchy:::setCrunchyAuthorization(func = function(input, output, session) {
        endsWith(email(shinyUser()()), "@crunch.io")
    })
}




