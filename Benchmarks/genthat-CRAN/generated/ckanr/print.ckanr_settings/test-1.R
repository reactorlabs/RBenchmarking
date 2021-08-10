library(ckanr)

function_to_run <- function() {
    x <- structure(list(url = "http://data.techno-science.ca/", key = "", test_url = "", test_key = "", test_did = "", test_rid = "", 
        test_gid = "", test_oid = "", test_behaviour = "", proxy = NULL), class = "ckanr_settings")
    ckanr:::print.ckanr_settings(x = x)
}




