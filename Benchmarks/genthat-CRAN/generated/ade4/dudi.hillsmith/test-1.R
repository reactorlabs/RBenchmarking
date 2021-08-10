library(ade4)

function_to_run <- function() {
    dunedata <- list(envir = structure(list(A1 = c(2.8, 3.5, 4.3, 4.2, 6.3, 4.3, 2.8, 4.2, 3.7, 3.3, 3.5, 5.8, 6, 9.3, 11.5, 
        5.7, 4, 4.6, 3.7, 3.5), moisture = c(1L, 1L, 2L, 2L, 1L, 1L, 1L, 5L, 4L, 2L, 1L, 4L, 5L, 5L, 5L, 5L, 2L, 1L, 5L, 
        5L), manure = c(4L, 2L, 4L, 4L, 2L, 2L, 3L, 3L, 1L, 1L, 1L, 2L, 3L, 0L, 0L, 3L, 0L, 0L, 0L, 0L), use = structure(c(2L, 
        2L, 2L, 2L, 1L, 2L, 3L, 3L, 1L, 1L, 3L, 2L, 2L, 3L, 2L, 3L, 1L, 1L, 1L, 1L), .Label = c("hayfield", "both", "grazing"), 
        class = "factor"), management = structure(c(4L, 1L, 4L, 4L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 4L, 4L, 3L, 3L, 4L, 3L, 3L, 
        3L, 3L), .Label = c("BF", "HF", "NM", "SF"), class = "factor")), row.names = c("1", "2", "3", "4", "5", "6", "7", 
        "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"), class = "data.frame"), veg = structure(list(Ach.mil = c(1L, 
        3L, 0L, 0L, 2L, 2L, 2L, 0L, 0L, 4L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 0L, 0L), Agr.sto = c(0L, 0L, 4L, 8L, 0L, 0L, 
        0L, 4L, 3L, 0L, 0L, 4L, 5L, 4L, 4L, 7L, 0L, 0L, 0L, 5L), Air.pra = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 2L, 0L, 3L, 0L), Alo.gen = c(0L, 2L, 7L, 2L, 0L, 0L, 0L, 5L, 3L, 0L, 0L, 8L, 5L, 0L, 0L, 4L, 
        0L, 0L, 0L, 0L), Ant.odo = c(0L, 0L, 0L, 0L, 4L, 3L, 2L, 0L, 0L, 4L, 0L, 0L, 0L, 0L, 0L, 0L, 4L, 0L, 4L, 0L), Bel.per = c(0L, 
        3L, 2L, 2L, 2L, 0L, 0L, 0L, 0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 0L), Bro.hor = c(0L, 4L, 0L, 3L, 2L, 0L, 
        2L, 0L, 0L, 4L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Che.alb = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Cir.arv = c(0L, 0L, 0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L), Ele.pal = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 4L, 0L, 0L, 0L, 0L, 0L, 4L, 5L, 8L, 0L, 0L, 0L, 4L), Ely.rep = c(4L, 
        4L, 4L, 4L, 4L, 0L, 0L, 0L, 6L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Emp.nig = c(0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L), Hyp.rad = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 
        0L, 0L, 0L, 0L, 0L, 2L, 0L, 5L, 0L), Jun.Art = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 4L, 4L, 0L, 0L, 0L, 0L, 0L, 3L, 3L, 
        0L, 0L, 0L, 4L), Jun.buf = c(0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 4L, 0L, 0L, 4L, 0L, 3L, 0L, 0L, 0L, 0L, 0L, 0L), Leo.aut = c(0L, 
        5L, 2L, 2L, 3L, 3L, 3L, 3L, 2L, 3L, 5L, 2L, 2L, 2L, 2L, 0L, 2L, 5L, 6L, 2L), Lol.per = c(7L, 5L, 6L, 5L, 2L, 6L, 
        6L, 4L, 2L, 6L, 7L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 0L, 0L), Pla.lan = c(0L, 0L, 0L, 0L, 5L, 5L, 5L, 0L, 0L, 3L, 3L, 
        0L, 0L, 0L, 0L, 0L, 2L, 3L, 0L, 0L), Poa.pra = c(4L, 4L, 5L, 4L, 2L, 3L, 4L, 4L, 4L, 4L, 4L, 0L, 2L, 0L, 0L, 0L, 
        1L, 3L, 0L, 0L), Poa.tri = c(2L, 7L, 6L, 5L, 6L, 4L, 5L, 4L, 5L, 4L, 0L, 4L, 9L, 0L, 0L, 2L, 0L, 0L, 0L, 0L), Pot.pal = c(0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 2L, 0L, 0L, 0L, 0L, 0L), Ran.fla = c(0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 2L, 0L, 0L, 0L, 0L, 2L, 2L, 2L, 2L, 0L, 0L, 0L, 4L), Rum.ace = c(0L, 0L, 0L, 0L, 5L, 6L, 3L, 0L, 2L, 0L, 0L, 
        2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Sag.pro = c(0L, 0L, 0L, 5L, 0L, 0L, 0L, 2L, 2L, 0L, 2L, 4L, 2L, 0L, 0L, 0L, 
        0L, 0L, 3L, 0L), Sal.rep = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 3L, 3L, 5L), Tri.pra = c(0L, 
        0L, 0L, 0L, 2L, 5L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Tri.rep = c(0L, 5L, 2L, 1L, 2L, 5L, 
        2L, 2L, 3L, 6L, 3L, 3L, 2L, 6L, 1L, 0L, 0L, 2L, 2L, 0L), Vic.lat = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 2L, 
        0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L), Bra.rut = c(0L, 0L, 2L, 2L, 2L, 6L, 2L, 2L, 2L, 2L, 4L, 4L, 0L, 0L, 4L, 4L, 
        0L, 6L, 3L, 4L), Cal.cus = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 4L, 0L, 3L, 0L, 0L, 0L, 3L)), row.names = c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"), class = "data.frame"))
    ade4:::dudi.hillsmith(df = dunedata$envir, scannf = FALSE)
}




