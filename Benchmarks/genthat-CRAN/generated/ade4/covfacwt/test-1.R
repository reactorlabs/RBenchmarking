

genthat_extracted_call <- function() {
    w <- structure(c(48, 12, 17, 18, 24, 45, 44, 9, 16, 32, 33, 41, 53, 1, 26, 47, 58, 63, 45, 22, 5, 32, 53, 52), names = c("sp_1", 
        "sp_2", "sp_3", "sp_4", "sp_5", "sp_6", "su_1", "su_2", "su_3", "su_4", "su_5", "su_6", "au_1", "au_2", "au_3", "au_4", 
        "au_5", "au_6", "wi_1", "wi_2", "wi_3", "wi_4", "wi_5", "wi_6"))
    meau <- list(env = structure(list(Temp = c(10L, 11L, 11L, 12L, 13L, 11L, 13L, 13L, 15L, 16L, 15L, 13L, 1L, 3L, 2L, 3L, 
        2L, 4L, 3L, 3L, 3L, 3L, 2L, 3L), Flow = c(41L, 158L, 198L, 280L, 322L, 303L, 62L, 80L, 100L, 140L, 160L, 310L, 25L, 
        63L, 79L, 85L, 72L, 181L, 118L, 252L, 315L, 498L, 390L, 480L), pH = c(8.5, 8.3, 8.5, 8.6, 8.5, 8.5, 8.3, 7.6, 7.8, 
        8, 8.4, 8.2, 8.4, 8, 8.1, 8.3, 8.6, 8.6, 8, 8.3, 8.3, 8.3, 8.2, 8.2), Cond = c(295L, 315L, 290L, 290L, 285L, 245L, 
        325L, 380L, 385L, 360L, 345L, 285L, 315L, 425L, 350L, 330L, 305L, 270L, 325L, 360L, 370L, 330L, 330L, 290L), Oxyg = c(110L, 
        13L, 113L, 126L, 117L, 100L, 95L, 20L, 46L, 76L, 91L, 82L, 91L, 38L, 84L, 106L, 91L, 105L, 100L, 100L, 100L, 100L, 
        100L, 100L), Bdo5 = c(2.3, 7.6, 3.3, 3.5, 3.6, 1.7, 2.3, 21, 15, 12, 1.7, 8.5, 1.6, 36, 7.1, 2, 1.6, 2.8, 1.6, 9.5, 
        8.7, 4.8, 1.7, 1.3), Oxyd = c(1.4, 3.3, 1.5, 1.5, 1.6, 0.9, 1.8, 5.7, 2.5, 2.6, 1.9, 1.6, 0.5, 8, 1.9, 1.4, 0.9, 
        0.5, 1.2, 2.9, 2.8, 1.6, 1.2, 0.8), Ammo = c(0.12, 2.85, 0.4, 0.45, 0.48, 0.05, 0.11, 9.8, 7.9, 4.9, 0.22, 0.59, 
        0.07, 12.5, 2.7, 0.42, 0.1, 0.1, 0.17, 2.52, 2.8, 1.04, 0.56, 0.04), Nitr = c(3.4, 2.7, 4, 4, 4.6, 2.7, 3, 0.8, 7.7, 
        8.4, 10, 3.7, 6.4, 2.2, 13.2, 12, 9.5, 3.66, 1.8, 4.6, 4.8, 4.4, 5, 2.2), Phos = c(0.11, 1.5, 0.1, 0.73, 0.84, 0.16, 
        0.13, 3.65, 4.5, 3.45, 1.74, 0.6, 0.03, 6.5, 3.7, 1.6, 1.25, 0.43, 0.19, 1.6, 2.85, 0.82, 0.6, 0.13)), class = "data.frame", 
        row.names = c("sp_1", "sp_2", "sp_3", "sp_4", "sp_5", "sp_6", "su_1", "su_2", "su_3", "su_4", "su_5", "su_6", "au_1", 
            "au_2", "au_3", "au_4", "au_5", "au_6", "wi_1", "wi_2", "wi_3", "wi_4", "wi_5", "wi_6")), design = structure(list(season = structure(c(1L, 
        1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L), .Label = c("spring", 
        "summer", "autumn", "winter"), class = "factor"), site = structure(c(1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 
        6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L), .Label = c("S1", "S2", "S3", "S4", "S5", "S6"), class = "factor")), 
        row.names = c("sp_1", "sp_2", "sp_3", "sp_4", "sp_5", "sp_6", "su_1", "su_2", "su_3", "su_4", "su_5", "su_6", "au_1", 
            "au_2", "au_3", "au_4", "au_5", "au_6", "wi_1", "wi_2", "wi_3", "wi_4", "wi_5", "wi_6"), class = "data.frame"), 
        spe = structure(list(Eda = c(4L, 0L, 0L, 0L, 0L, 2L, 6L, 0L, 0L, 0L, 0L, 0L, 4L, 0L, 0L, 0L, 2L, 0L, 3L, 0L, 0L, 
            0L, 1L, 0L), Bsp = c(7L, 0L, 5L, 3L, 5L, 7L, 7L, 0L, 6L, 7L, 6L, 8L, 5L, 0L, 9L, 10L, 10L, 12L, 6L, 3L, 0L, 6L, 
            9L, 9L), Brh = c(10L, 8L, 5L, 6L, 6L, 9L, 10L, 9L, 8L, 11L, 9L, 9L, 8L, 1L, 10L, 13L, 12L, 13L, 7L, 6L, 3L, 10L, 
            11L, 12L), Bni = c(9L, 0L, 0L, 0L, 0L, 4L, 0L, 0L, 0L, 0L, 2L, 3L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
            0L), Bpu = c(0L, 0L, 0L, 0L, 0L, 0L, 10L, 0L, 0L, 0L, 3L, 4L, 9L, 0L, 0L, 0L, 4L, 8L, 6L, 0L, 0L, 0L, 3L, 7L), 
            Cen = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 2L, 0L, 0L, 6L, 0L, 0L, 3L, 0L, 3L, 7L, 5L, 1L, 5L, 6L, 4L), Ecd = c(0L, 
                0L, 0L, 0L, 5L, 0L, 0L, 0L, 0L, 0L, 4L, 2L, 0L, 0L, 0L, 0L, 8L, 6L, 0L, 0L, 0L, 1L, 8L, 5L), Rhi = c(5L, 
                0L, 2L, 3L, 0L, 5L, 2L, 0L, 0L, 0L, 0L, 4L, 5L, 0L, 0L, 5L, 4L, 9L, 4L, 4L, 1L, 3L, 3L, 8L), Hla = c(9L, 
                4L, 5L, 6L, 4L, 6L, 7L, 0L, 0L, 2L, 0L, 3L, 9L, 0L, 4L, 5L, 4L, 7L, 8L, 3L, 0L, 5L, 5L, 6L), Hab = c(0L, 
                0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 2L, 0L, 0L, 0L, 0L, 0L, 2L, 0L), Par = c(4L, 
                0L, 0L, 0L, 0L, 2L, 0L, 0L, 0L, 0L, 0L, 0L, 7L, 0L, 3L, 4L, 5L, 0L, 4L, 1L, 0L, 2L, 5L, 1L), Cae = c(0L, 
                0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 5L, 2L, 0L, 0L, 0L, 0L, 2L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), Eig = c(0L, 
                0L, 0L, 0L, 4L, 10L, 2L, 0L, 0L, 5L, 7L, 8L, 0L, 0L, 0L, 4L, 6L, 5L, 0L, 0L, 0L, 0L, 0L, 0L)), class = "data.frame", 
            row.names = c("sp_1", "sp_2", "sp_3", "sp_4", "sp_5", "sp_6", "su_1", "su_2", "su_3", "su_4", "su_5", "su_6", 
                "au_1", "au_2", "au_3", "au_4", "au_5", "au_6", "wi_1", "wi_2", "wi_3", "wi_4", "wi_5", "wi_6")))
    ade4:::covfacwt(df = meau$env, fac = meau$design$season, wt = w)
}




