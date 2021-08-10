library(ade4)

function_to_run <- function() {
    x <- 3L
    wt.list <- list(spring = structure(c(48, 12, 17, 18, 24, 45), names = c("sp_1", "sp_2", "sp_3", "sp_4", "sp_5", "sp_6")), 
        summer = structure(c(44, 9, 16, 32, 33, 41), names = c("su_1", "su_2", "su_3", "su_4", "su_5", "su_6")), autumn = structure(c(53, 
            1, 26, 47, 58, 63), names = c("au_1", "au_2", "au_3", "au_4", "au_5", "au_6")), winter = structure(c(45, 22, 
            5, 32, 53, 52), names = c("wi_1", "wi_2", "wi_3", "wi_4", "wi_5", "wi_6")))
    df.list <- list(spring = structure(list(Temp = c(10L, 11L, 11L, 12L, 13L, 11L), Flow = c(41L, 158L, 198L, 280L, 322L, 
        303L), pH = c(8.5, 8.3, 8.5, 8.6, 8.5, 8.5), Cond = c(295L, 315L, 290L, 290L, 285L, 245L), Oxyg = c(110L, 13L, 113L, 
        126L, 117L, 100L), Bdo5 = c(2.3, 7.6, 3.3, 3.5, 3.6, 1.7), Oxyd = c(1.4, 3.3, 1.5, 1.5, 1.6, 0.9), Ammo = c(0.12, 
        2.85, 0.4, 0.45, 0.48, 0.05), Nitr = c(3.4, 2.7, 4, 4, 4.6, 2.7), Phos = c(0.11, 1.5, 0.1, 0.73, 0.84, 0.16)), row.names = c("sp_1", 
        "sp_2", "sp_3", "sp_4", "sp_5", "sp_6"), class = "data.frame"), summer = structure(list(Temp = c(13L, 13L, 15L, 16L, 
        15L, 13L), Flow = c(62L, 80L, 100L, 140L, 160L, 310L), pH = c(8.3, 7.6, 7.8, 8, 8.4, 8.2), Cond = c(325L, 380L, 385L, 
        360L, 345L, 285L), Oxyg = c(95L, 20L, 46L, 76L, 91L, 82L), Bdo5 = c(2.3, 21, 15, 12, 1.7, 8.5), Oxyd = c(1.8, 5.7, 
        2.5, 2.6, 1.9, 1.6), Ammo = c(0.11, 9.8, 7.9, 4.9, 0.22, 0.59), Nitr = c(3, 0.8, 7.7, 8.4, 10, 3.7), Phos = c(0.13, 
        3.65, 4.5, 3.45, 1.74, 0.6)), row.names = c("su_1", "su_2", "su_3", "su_4", "su_5", "su_6"), class = "data.frame"), 
        autumn = structure(list(Temp = c(1L, 3L, 2L, 3L, 2L, 4L), Flow = c(25L, 63L, 79L, 85L, 72L, 181L), pH = c(8.4, 8, 
            8.1, 8.3, 8.6, 8.6), Cond = c(315L, 425L, 350L, 330L, 305L, 270L), Oxyg = c(91L, 38L, 84L, 106L, 91L, 105L), 
            Bdo5 = c(1.6, 36, 7.1, 2, 1.6, 2.8), Oxyd = c(0.5, 8, 1.9, 1.4, 0.9, 0.5), Ammo = c(0.07, 12.5, 2.7, 0.42, 0.1, 
                0.1), Nitr = c(6.4, 2.2, 13.2, 12, 9.5, 3.66), Phos = c(0.03, 6.5, 3.7, 1.6, 1.25, 0.43)), row.names = c("au_1", 
            "au_2", "au_3", "au_4", "au_5", "au_6"), class = "data.frame"), winter = structure(list(Temp = c(3L, 3L, 3L, 
            3L, 2L, 3L), Flow = c(118L, 252L, 315L, 498L, 390L, 480L), pH = c(8, 8.3, 8.3, 8.3, 8.2, 8.2), Cond = c(325L, 
            360L, 370L, 330L, 330L, 290L), Oxyg = c(100L, 100L, 100L, 100L, 100L, 100L), Bdo5 = c(1.6, 9.5, 8.7, 4.8, 1.7, 
            1.3), Oxyd = c(1.2, 2.9, 2.8, 1.6, 1.2, 0.8), Ammo = c(0.17, 2.52, 2.8, 1.04, 0.56, 0.04), Nitr = c(1.8, 4.6, 
            4.8, 4.4, 5, 2.2), Phos = c(0.19, 1.6, 2.85, 0.82, 0.6, 0.13)), row.names = c("wi_1", "wi_2", "wi_3", "wi_4", 
            "wi_5", "wi_6"), class = "data.frame"))
    ade4:::covwt(x = df.list[[x]], wt = wt.list[[x]])
}




