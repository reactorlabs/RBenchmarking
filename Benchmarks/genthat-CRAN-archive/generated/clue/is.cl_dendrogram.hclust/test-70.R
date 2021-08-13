

genthat_extracted_call <- function() {
    dist <- stats::dist
    hclust <- stats::hclust
    USArrests <- datasets::USArrests
    hcl <- structure(list(merge = structure(c(-15L, -17L, -14L, -13L, -35L, -36L, -7L, -19L, -49L, -21L, -37L, -4L, -48L, 
        -34L, -22L, -27L, -3L, -6L, -12L, -1L, -50L, -20L, -8L, 5L, -23L, 16L, -24L, 4L, -47L, -25L, -10L, -2L, 21L, 24L, 
        -11L, -5L, 30L, -39L, -9L, 13L, 23L, 22L, 35L, 41L, 37L, 34L, 39L, 45L, 47L, -29L, -26L, -16L, -32L, -44L, -46L, 
        -38L, -41L, 1L, -30L, 6L, -42L, 8L, -45L, -28L, 2L, -31L, -43L, 3L, -18L, 11L, 17L, 20L, 7L, 9L, 19L, -40L, 15L, 
        10L, 12L, 18L, 27L, 29L, 26L, 25L, 28L, 31L, 33L, -33L, 14L, 32L, 36L, 40L, 42L, 38L, 43L, 44L, 46L, 48L), .Dim = c(49L, 
        2L)), height = c(2.29128784747792, 3.83405790253616, 3.9293765408777, 6.23698645180507, 6.63777071011044, 7.35527021937332, 
        8.02745289615579, 8.5375640553966, 10.8600184161906, 11.4564392373896, 12.4249748490691, 12.6142776249772, 12.7753669223236, 
        13.0449223838243, 13.2973681606549, 13.3491572767722, 13.8960426021224, 14.5010344458594, 15.4077902374091, 15.4544491975612, 
        15.6300991679516, 15.8902485820707, 16.9767488053514, 18.2649938406779, 19.4375924435101, 19.904270898478, 21.1671915945408, 
        22.3660456943108, 22.7666422645062, 24.8943768751098, 25.0930269198437, 28.6351182990397, 29.250641018617, 31.477134558279, 
        31.6204048044929, 32.7188019340562, 36.734860827285, 36.8479307424447, 38.5279119600323, 41.487950057818, 48.7251475113211, 
        53.5933764564242, 57.2710223411456, 64.9936150710206, 68.7622716320513, 87.3263419593424, 102.861557444946, 168.611417169775, 
        293.622751162099), order = c(9L, 33L, 8L, 1L, 18L, 2L, 24L, 40L, 20L, 3L, 31L, 5L, 13L, 32L, 22L, 28L, 25L, 4L, 42L, 
        10L, 6L, 43L, 39L, 50L, 37L, 36L, 46L, 47L, 21L, 30L, 35L, 44L, 7L, 38L, 27L, 17L, 26L, 12L, 14L, 16L, 11L, 23L, 
        49L, 15L, 29L, 48L, 19L, 41L, 34L, 45L), labels = c("Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", 
        "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", 
        "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
        "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", 
        "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", 
        "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"), method = "complete", call = hclust(d = dist(USArrests)), 
        dist.method = "euclidean"), class = "hclust")
    clue:::is.cl_dendrogram.hclust(x = hcl)
}




