library(aws.signature)

function_to_run <- function() {
    rh <- "3511de7e95d28ecd39e9513b642aee07e54f4941150d8df8bf94b328ef7e55e2"
    aws.signature:::string_to_sign(datetime = "20110909T233600Z", region = "us-east-1", service = "iam", request_hash = rh)
}




