

genthat_extracted_call <- function() {
    X <- structure(list(income = c(62L, 72L, 75L, 55L, 64L, 21L, 64L, 80L, 67L, 72L, 42L, 76L, 76L, 41L, 48L, 76L, 53L, 60L, 
        42L, 78L, 29L, 48L, 55L, 29L, 21L, 47L, 81L, 36L, 22L, 44L, 15L, 7L, 42L, 9L, 21L, 21L, 16L, 16L, 9L, 14L, 12L, 17L, 
        7L, 34L, 8L), education = c(86L, 76L, 92L, 90L, 86L, 84L, 93L, 100L, 87L, 86L, 74L, 98L, 97L, 84L, 91L, 34L, 45L, 
        56L, 44L, 82L, 72L, 55L, 71L, 50L, 23L, 39L, 28L, 32L, 22L, 25L, 29L, 7L, 26L, 19L, 15L, 20L, 26L, 28L, 17L, 22L, 
        30L, 25L, 20L, 47L, 32L), prestige = c(82L, 83L, 90L, 76L, 90L, 87L, 93L, 90L, 52L, 88L, 57L, 89L, 97L, 59L, 73L, 
        38L, 76L, 81L, 45L, 92L, 39L, 34L, 41L, 16L, 33L, 53L, 67L, 57L, 26L, 29L, 10L, 15L, 19L, 10L, 13L, 24L, 20L, 7L, 
        3L, 16L, 6L, 11L, 8L, 41L, 10L), type = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 
        2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), 
        .Label = c("bc", "prof", "wc"), class = "factor")), class = "data.frame", row.names = c("accountant", "pilot", "architect", 
        "author", "chemist", "minister", "professor", "dentist", "reporter", "engineer", "undertaker", "lawyer", "physician", 
        "welfare.worker", "teacher", "conductor", "contractor", "factory.owner", "store.manager", "banker", "bookkeeper", 
        "mail.carrier", "insurance.agent", "store.clerk", "carpenter", "electrician", "RR.engineer", "machinist", "auto.repairman", 
        "plumber", "gas.stn.attendant", "coal.miner", "streetcar.motorman", "taxi.driver", "truck.driver", "machine.operator", 
        "barber", "bartender", "shoe.shiner", "cook", "soda.clerk", "watchman", "janitor", "policeman", "waiter"), terms = ~income + 
        education + prestige + type)
    ncol <- 4L
    car:::scatterplotMatrix.default(x = X[, -ncol], groups = X[, ncol])
}




