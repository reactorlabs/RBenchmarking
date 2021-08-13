

genthat_extracted_call <- function() {
    agriculture <- structure(list(x = c(16.8, 21.3, 18.7, 5.9, 11.4, 17.8, 10.9, 16.6, 21, 16.4, 7.8, 14), y = c(2.7, 5.7, 
        3.5, 22.2, 10.9, 6, 14, 8.5, 3.5, 4.3, 17.4, 2.3)), class = "data.frame", row.names = c("B", "DK", "D", "GR", "E", 
        "F", "IRL", "I", "L", "NL", "P", "UK"))
    agnes <- cluster::agnes
    cluster:::summary.agnes(object = agnes(agriculture))
}




