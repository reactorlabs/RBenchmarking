library(desc)

function_to_run <- function() {
    x <- structure(list(key = "Collate", value = "'assertions.R' 'authors-at-r.R' 'built.R' 'classes.R'\n        'collate.R' 'constants.R' 'deps.R' 'description.R' 'encoding.R'\n        'latex.R' 'non-oo-api.R' 'package-archives.R' 'read.R'\n        'remotes.R' 'str.R' 'syntax_checks.R' 'urls.R' 'utils.R'\n        'validate.R' 'version.R'"), 
        class = c("DescriptionCollate", "DescriptionField"))
    parse_collate <- desc:::parse_collate
    color_bad <- desc:::color_bad
    desc:::deparse_collate(list = parse_collate(color_bad(x)))
}




