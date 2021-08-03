library(prodlim)

function_to_run <- function() {
    x <- structure(list(table = structure(c("sex=female", "sex=female", "sex=female", "sex=male", "sex=male", "sex=male",
        "0", "1", "5", "0", "1", "5", "1", "5", "10", "1", "5", "10", "24", "24", "13", "26", "26", "15", "0", "8", "6",
        "0", "5", "3", "0", "3", "4", "0", "6", "6", "100", "63.5107586279461", "28.2657771915584", "100", "77.703690984941",
        "56.6919786267682", "0", "10.3737934375157", "11.5858855384986", "0", "8.91585052750669", "12.6824702215095", "0",
        "43.1784971073574", "5.55785880709778", "0", "60.2289450594854", "31.8347937576078", "100", "83.8430201485349", "50.9736955760191",
        "100", "95.1784369103965", "81.5491634959286"), .Dim = c(6L, 10L), .Dimnames = list(NULL, c("X", "time0", "time1",
        "n.risk", "n.event", "n.lost", "surv", "se.surv", "lower", "upper"))), model = "survival", cotype = 2, asMatrix = TRUE,
        percent = TRUE), class = "summary.prodlim")
    prodlim:::print.summary.prodlim(x = x)
}




