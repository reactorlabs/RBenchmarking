library(descr)

function_to_run <- function() {
    CO2 <- structure(list(Plant = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 
        3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 6L, 6L, 6L, 6L, 6L, 6L, 6L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 9L, 9L, 9L, 9L, 9L, 9L, 
        9L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 7L, 7L, 7L, 7L, 7L, 7L, 7L, 12L, 12L, 12L, 12L, 12L, 12L, 12L, 10L, 10L, 10L, 10L, 
        10L, 10L, 10L, 11L, 11L, 11L, 11L, 11L, 11L, 11L), .Label = c("Qn1", "Qn2", "Qn3", "Qc1", "Qc3", "Qc2", "Mn3", "Mn2", 
        "Mn1", "Mc2", "Mc3", "Mc1"), class = c("ordered", "factor")), Type = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("Quebec", "Mississippi"), class = "factor"), 
        Treatment = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
            1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L), .Label = c("nonchilled", "chilled"), class = "factor"), conc = c(95, 175, 250, 350, 500, 
            675, 1000, 95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 
            1000, 95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000, 
            95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000, 95, 
            175, 250, 350, 500, 675, 1000, 95, 175, 250, 350, 500, 675, 1000), uptake = c(16, 30.4, 34.8, 37.2, 35.3, 39.2, 
            39.7, 13.6, 27.3, 37.1, 41.8, 40.6, 41.4, 44.3, 16.2, 32.4, 40.3, 42.1, 42.9, 43.9, 45.5, 14.2, 24.1, 30.3, 34.6, 
            32.5, 35.4, 38.7, 9.3, 27.3, 35, 38.8, 38.6, 37.5, 42.4, 15.1, 21, 38.1, 34, 38.9, 39.6, 41.4, 10.6, 19.2, 26.2, 
            30, 30.9, 32.4, 35.5, 12, 22, 30.6, 31.8, 32.4, 31.1, 31.5, 11.3, 19.4, 25.8, 27.9, 28.5, 28.1, 27.8, 10.5, 14.9, 
            18.1, 18.9, 19.5, 22.2, 21.9, 7.7, 11.4, 12.3, 13, 12.5, 13.7, 14.4, 10.6, 18, 17.9, 17.9, 17.9, 18.9, 19.9)), 
        row.names = 1:84, class = c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame"), formula = uptake ~ conc | 
            Plant, outer = ~Treatment * Type, labels = list(x = "Ambient carbon dioxide concentration", y = "CO2 uptake rate"), 
        units = list(x = "(uL/L)", y = "(umol/m^2 s)"))
    descr:::data.frame2txt(x = CO2)
}




