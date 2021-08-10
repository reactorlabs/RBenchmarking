library(ezec)

function_to_run <- function() {
    dummydata <- structure(list(ID = c("Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", 
        "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", 
        "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", 
        "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", 
        "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample1", "Sample2", "Sample2", "Sample2", "Sample2", 
        "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", 
        "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", 
        "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", 
        "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2", "Sample2"), 
        strain = c("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", 
            "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", 
            "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", 
            "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", 
            "a", "a", "a", "a", "a", "a", "a", "a", "a"), fung = c("Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", "Metalaxyl", 
            "Metalaxyl"), dose = c(0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 
            100, 1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 
            1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 
            1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 1000, 0, 0, 0.1, 0.1, 1, 1, 10, 10, 100, 100, 1000, 1000), 
        rep = c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 1L, 2L, 1L, 
            2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 
            2L, 1L, 2L, 1L, 2L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 
            2L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L, 3L, 4L), response = c(1.5, 1, 0.5, 1, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 
            2, 1, 0.5, 1, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 2, 2, 0.5, 1, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 2, 1, 0.5, 0.5, 0.5, 0.5, 
            0, 0, 0, 0, 0, 0, 1.55, 1.05, 0.55, 1.05, 0.55, 0.55, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 2.05, 1.05, 0.55, 1.05, 
            0.55, 0.55, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 2.05, 2.05, 0.55, 1.05, 0.55, 0.55, 0.05, 0.05, 0.05, 0.05, 0.05, 
            0.05, 2.05, 1.05, 0.55, 0.55, 0.55, 0.55, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05)), row.names = c("1", "2", "3", 
        "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", 
        "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", 
        "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", 
        "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", 
        "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96"), class = "data.frame")
    ezec:::EC_table(x = dummydata, form = response ~ dose, model = "W2.4")
}




