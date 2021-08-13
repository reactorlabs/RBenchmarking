

genthat_extracted_call <- function() {
    mca.wine <- list(data = structure(list(expert1.fruity = structure(c(1L, 2L, 2L, 2L, 1L, 1L), .Label = c("NO", "YES"), 
        class = "factor"), expert1.woody = structure(c(3L, 2L, 1L, 1L, 3L, 2L), .Label = c("A", "B", "C"), class = "factor"), 
        expert1.coffee = structure(c(2L, 1L, 1L, 1L, 2L, 2L), .Label = c("NO", "YES"), class = "factor"), expert2.red.fruit = structure(c(1L, 
            2L, 2L, 2L, 1L, 1L), .Label = c("NO", "YES"), class = "factor"), expert2.roasted = structure(c(2L, 1L, 1L, 1L, 
            2L, 2L), .Label = c("NO", "YES"), class = "factor"), expert2.vanillin = structure(c(3L, 2L, 1L, 1L, 3L, 2L), 
            .Label = c("A", "B", "C"), class = "factor"), expert2.woody = structure(c(2L, 1L, 1L, 1L, 2L, 2L), .Label = c("NO", 
            "YES"), class = "factor"), expert3.fruity = structure(c(2L, 2L, 2L, 1L, 1L, 1L), .Label = c("NO", "YES"), class = "factor"), 
        expert3.butter = structure(c(2L, 1L, 1L, 1L, 2L, 2L), .Label = c("NO", "YES"), class = "factor"), expert3.woody = structure(c(2L, 
            1L, 1L, 1L, 2L, 2L), .Label = c("NO", "YES"), class = "factor")), class = "data.frame", row.names = c("W1", "W2", 
        "W3", "W4", "W5", "W6")))
    ExPosition:::epMCA(DATA = mca.wine$data)
}




