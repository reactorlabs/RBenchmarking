

genthat_extracted_call <- function() {
    weights <- NULL
    subset <- NULL
    formula <- asat ~ group
    data <- structure(list(asat = c(1.33, 1.78, 1.53, 1.95, 1.83, 1.47, 1.87, 1.55, 2.58, 2.17, 1.97, 1.62, 2.25, 3.53, 2.92, 
        1.78, 2.22, 2.55, 2.75, 1.53, 1.75, 2.12, 2.83, 2.58, 2.37, 2.92, 2.08, 3.01, 2.67, 2.08, 2.25, 3.08, 2.01, 1.58), 
        group = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 
            1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("Compound", "Control"), class = "factor")), class = "data.frame", 
        row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", 
            "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"))
    coin:::ft(test = "normal_test", class = "IndependenceProblem", formula = formula, data = data, subset = subset, weights = weights, 
        frame = parent.frame(), distribution = "exact", alternative = "greater")
}




