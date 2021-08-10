library(ade4)

function_to_run <- function() {
    lizards <- list(traits = structure(list(mean.L = c(69.2, 48.4, 168.4, 66.1, 70.1, 55.2, 49.6, 61.3, 63.1, 58.5, 53.5, 
        65, 71.9, 55.5, 53, 68.4, 108.5, 98.5), matur.L = c(58L, 42L, 132L, 56L, 60L, 44L, 39L, 49L, 53L, 49L, 46L, 56L, 
        61L, 44L, 43L, 62L, 91L, 84L), max.L = c(82L, 56L, 190L, 72L, 81L, 64L, 57L, 67L, 71L, 65L, 64L, 76L, 84L, 70L, 63L, 
        82L, 124L, 123L), hatch.L = c(27.8, 22.9, 42.8, 25, 26.6, 24, 23.8, 27, 28.2, 24.8, 22.5, 23.4, 34, 20.8, 19.4, 26.6, 
        31.6, 32.6), hatch.m = c(0.572, 0.31, 2.235, 0.441, 0.55, 0.304, 0.31, 0.421, 0.513, 0.353, 0.214, 0.316, 1.051, 
        0.177, 0.21, 0.54, 0.767, 0.886), clutch.S = c(6, 3.2, 16.9, 7.2, 5.4, 4.2, 2.1, 3.6, 2.7, 5.2, 3.4, 3.1, 3.7, 4.4, 
        6.2, 5.8, 13.7, 8.9), age.mat = c(13L, 5L, 19L, 11L, 10L, 8L, 8L, 8L, 7L, 12L, 7L, 13L, 10L, 11L, 11L, 15L, 16L, 
        12L), clutch.F = c(1.5, 2, 1, 1.5, 1, 2, 2, 2, 2, 2, 3, 2, 1, 1, 1, 1, 1, 1)), row.names = c("Sa", "Sh", "Tl", "Mc", 
        "My", "Pb", "Ph", "Pg", "Pa", "Pm", "Tt", "Ts", "Ae", "Zv", "Zo", "La", "Ls", "Lv"), class = "data.frame"), hprA = "((Sa:17,Sh:17):16,((((Tl:17,(Mc:1,My:1):16):1,((((Ph:0.02,Pg:0.02):0.98,Pa:1):2,Pb:3):2,Pm:5):13):4,(Ae:20,(Tt:15,Ts:15):5):2):2,((Zo:0.1,Zv:0.1):21.9,(La:10,(Ls:5,Lv:5):5):12):2):9);", 
        hprB = "([firstbranch]((Sa:17,Sh:17):16,((Mc:1,My:1):17,((((Ph:0.02,Pg:0.02):0.98,Pa:1):2,Pb:3):2,Pm:5):13):15):2,[secondbranch]((Ae:20,((Tt:15,Ts:15):3,(Zo:0.1,Zv:0.1):17.9):2):2,((La:10,(Ls:5,Lv:5):5):7,Tl:17):5):13);")
    newick2phylog <- ade4::newick2phylog
    res <- structure(list(tre = "((Sa,Sh)I1,((((Tl,(Mc,My)I2)I3,((((Ph,Pg)I4,Pa)I5,Pb)I6,Pm)I7)I8,(Ae,(Tt,Ts)I9)I10)I11,((Zo,Zv)I12,(La,(Ls,Lv)I13)I14)I15)I16)Root;", 
        leaves = structure(c(17, 17, 17, 1, 1, 0.02, 0.02, 1, 3, 5, 20, 15, 15, 0.1, 0.1, 10, 5, 5), names = c("Sa", "Sh", 
            "Tl", "Mc", "My", "Ph", "Pg", "Pa", "Pb", "Pm", "Ae", "Tt", "Ts", "Zo", "Zv", "La", "Ls", "Lv")), nodes = structure(c(16, 
            16, 1, 0.98, 2, 2, 13, 4, 5, 2, 2, 21.9, 5, 12, 2, 9, 0), names = c("I1", "I2", "I3", "I4", "I5", "I6", "I7", 
            "I8", "I9", "I10", "I11", "I12", "I13", "I14", "I15", "I16", "Root")), parts = list(I1 = c("Sa", "Sh"), I2 = c("Mc", 
            "My"), I3 = c("Tl", "I2"), I4 = c("Ph", "Pg"), I5 = c("I4", "Pa"), I6 = c("I5", "Pb"), I7 = c("I6", "Pm"), I8 = c("I3", 
            "I7"), I9 = c("Tt", "Ts"), I10 = c("Ae", "I9"), I11 = c("I8", "I10"), I12 = c("Zo", "Zv"), I13 = c("Ls", "Lv"), 
            I14 = c("La", "I13"), I15 = c("I12", "I14"), I16 = c("I11", "I15"), Root = c("I1", "I16")), paths = list(Sa = c("Root", 
            "I1", "Sa"), Sh = c("Root", "I1", "Sh"), Tl = c("Root", "I16", "I11", "I8", "I3", "Tl"), Mc = c("Root", "I16", 
            "I11", "I8", "I3", "I2", "Mc"), My = c("Root", "I16", "I11", "I8", "I3", "I2", "My"), Ph = c("Root", "I16", "I11", 
            "I8", "I7", "I6", "I5", "I4", "Ph"), Pg = c("Root", "I16", "I11", "I8", "I7", "I6", "I5", "I4", "Pg"), Pa = c("Root", 
            "I16", "I11", "I8", "I7", "I6", "I5", "Pa"), Pb = c("Root", "I16", "I11", "I8", "I7", "I6", "Pb"), Pm = c("Root", 
            "I16", "I11", "I8", "I7", "Pm"), Ae = c("Root", "I16", "I11", "I10", "Ae"), Tt = c("Root", "I16", "I11", "I10", 
            "I9", "Tt"), Ts = c("Root", "I16", "I11", "I10", "I9", "Ts"), Zo = c("Root", "I16", "I15", "I12", "Zo"), Zv = c("Root", 
            "I16", "I15", "I12", "Zv"), La = c("Root", "I16", "I15", "I14", "La"), Ls = c("Root", "I16", "I15", "I14", "I13", 
            "Ls"), Lv = c("Root", "I16", "I15", "I14", "I13", "Lv"), I1 = c("Root", "I1"), I2 = c("Root", "I16", "I11", "I8", 
            "I3", "I2"), I3 = c("Root", "I16", "I11", "I8", "I3"), I4 = c("Root", "I16", "I11", "I8", "I7", "I6", "I5", "I4"), 
            I5 = c("Root", "I16", "I11", "I8", "I7", "I6", "I5"), I6 = c("Root", "I16", "I11", "I8", "I7", "I6"), I7 = c("Root", 
                "I16", "I11", "I8", "I7"), I8 = c("Root", "I16", "I11", "I8"), I9 = c("Root", "I16", "I11", "I10", "I9"), 
            I10 = c("Root", "I16", "I11", "I10"), I11 = c("Root", "I16", "I11"), I12 = c("Root", "I16", "I15", "I12"), I13 = c("Root", 
                "I16", "I15", "I14", "I13"), I14 = c("Root", "I16", "I15", "I14"), I15 = c("Root", "I16", "I15"), I16 = c("Root", 
                "I16"), Root = "Root"), droot = structure(c(33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 
            33, 33, 16, 32, 16, 32.98, 32, 30, 28, 15, 18, 13, 11, 32.9, 28, 23, 11, 9, 0), names = c("Sa", "Sh", "Tl", "Mc", 
            "My", "Ph", "Pg", "Pa", "Pb", "Pm", "Ae", "Tt", "Ts", "Zo", "Zv", "La", "Ls", "Lv", "I1", "I2", "I3", "I4", "I5", 
            "I6", "I7", "I8", "I9", "I10", "I11", "I12", "I13", "I14", "I15", "I16", "Root")), call = newick2phylog(x.tre = lizards$hprA)), 
        class = "phylog")
    ade4:::newick2phylog.addtools(res = res)
}




