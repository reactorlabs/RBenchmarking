library(prodlim)

function_to_run <- function() {
    event.time.order <- c(2L, 10L, 11L, 8L, 13L, 15L, 6L, 9L, 5L, 7L, 4L, 14L, 3L, 1L, 12L)
    event.history <- structure(c(5.7248465289322, 0.597364679005719, 5.32834369210633, 4.11975186868313, 2.58908125548376,
        2.34600241418988, 3.37065111669117, 1.82132226826408, 2.4465502378103, 0.836736115633699, 1.21539126795391, 6.19802755334038,
        2.20688663795295, 4.48477476990214, 2.28403441657353, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 2, 3, 3, 1,
        2, 1, 1, 3, 1, 1, 2, 1, 3, 1), .Dim = c(15L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9",
        "10", "11", "12", "13", "14", "15"), c("time", "status", "event")), class = "Hist", states = c("1", "2"), cens.type = "rightCensored",
        cens.code = "0", model = "competing.risks", entry.type = "")
    prodlim:::`[.Hist`(x = event.history, i = event.time.order, drop = FALSE)
}




