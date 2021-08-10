library(data.tree)

function_to_run <- function() {
    x <- structure(list(from = c("Acme Inc.", "Acme Inc.", "Acme Inc.", "Accounting", "Accounting", "Research", "Research", 
        "IT", "IT", "IT"), to = c("Accounting", "Research", "IT", "New Software", "New Accounting Standards", "New Product Line", 
        "New Labs", "Outsource", "Go agile", "Switch to R"), p = c(NA, NA, NA, 0.5, 0.75, 0.25, 0.9, 0.2, 0.05, 1), cost = c(NA, 
        NA, NA, 1e+06, 5e+05, 2e+06, 750000, 4e+05, 250000, 50000)), row.names = c(NA, 10L), class = "data.frame")
    data.tree:::FromDataFrameNetwork(network = x)
}




