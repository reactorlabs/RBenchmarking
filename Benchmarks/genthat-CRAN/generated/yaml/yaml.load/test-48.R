library(yaml)

function_to_run <- function() {
    yaml:::yaml.load(string = "foo: 123\nbar: 456")
}




