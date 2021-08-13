

genthat_extracted_call <- function() {
    predicted <- structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), .Label = c("setosa", "versicolor", 
        "virginica"), class = "factor")
    lev <- structure(c("setosa", "versicolor", "virginica"), ordered = FALSE)
    ctrl <- list(method = "cv", number = 10, repeats = NA, search = "grid", p = 0.75, initialWindow = NULL, horizon = 1, 
        fixedWindow = TRUE, skip = 0, verboseIter = FALSE, returnData = TRUE, returnResamp = "final", savePredictions = "none", 
        classProbs = FALSE, summaryFunction = genthat::with_env(function(data, lev = NULL, model = NULL) {
            `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
            ""
            on.exit({
                if (.Internal(getOption("genthat.tracing"))) {
                  .Internal(options(genthat.tracing = FALSE))
                  default <- genthat:::`__genthat_default_retv`
                  retv <- returnValue(default = default)
                  if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                    genthat:::record_trace(name = "defaultSummary", pkg = "caret", args = as.list(match.call())[-1], retv = retv, 
                      seed = `__genthat_captured_seed`, env = parent.frame())
                  }
                  .Internal(options(genthat.tracing = TRUE))
                }
            })
            {
                if (is.character(data$obs)) data$obs <- factor(data$obs, levels = lev)
                postResample(data[, "pred"], data[, "obs"])
            }
        }, env = getNamespace("caret")), selectionFunction = "best", preProcOptions = list(thresh = 0.95, ICAcomp = 3, k = 5, 
            freqCut = 19, uniqueCut = 10, cutoff = 0.9), sampling = NULL, index = list(Fold01 = c(1L, 2L, 4L, 5L, 6L, 7L, 
            8L, 9L, 10L, 11L, 12L, 13L, 14L, 16L, 17L, 18L, 19L, 20L, 21L, 22L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 30L, 32L, 
            33L, 34L, 35L, 36L, 37L, 38L, 39L, 40L, 41L, 42L, 43L, 44L, 45L, 46L, 49L, 50L, 51L, 52L, 53L, 54L, 56L, 57L, 
            58L, 59L, 60L, 61L, 62L, 63L, 65L, 67L, 68L, 69L, 70L, 71L, 72L, 73L, 74L, 75L, 76L, 77L, 78L, 79L, 80L, 81L, 
            82L, 83L, 84L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 92L, 93L, 95L, 96L, 98L, 99L, 100L, 101L, 102L, 103L, 104L, 
            106L, 107L, 108L, 109L, 110L, 111L, 112L, 113L, 114L, 115L, 116L, 117L, 118L, 119L, 120L, 121L, 123L, 124L, 125L, 
            126L, 127L, 128L, 130L, 131L, 132L, 133L, 134L, 135L, 137L, 138L, 139L, 140L, 141L, 142L, 144L, 145L, 146L, 147L, 
            148L, 149L, 150L), Fold02 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 14L, 15L, 17L, 18L, 19L, 20L, 
            21L, 22L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 31L, 32L, 33L, 34L, 36L, 37L, 38L, 39L, 40L, 42L, 43L, 44L, 45L, 
            46L, 47L, 48L, 49L, 50L, 51L, 52L, 53L, 54L, 55L, 56L, 57L, 58L, 59L, 61L, 62L, 63L, 64L, 66L, 67L, 68L, 69L, 
            70L, 72L, 74L, 75L, 76L, 77L, 78L, 79L, 80L, 81L, 83L, 84L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 92L, 93L, 94L, 
            95L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 103L, 104L, 105L, 106L, 107L, 108L, 109L, 111L, 112L, 113L, 115L, 
            116L, 117L, 118L, 119L, 120L, 121L, 122L, 123L, 124L, 125L, 126L, 127L, 128L, 129L, 130L, 133L, 134L, 135L, 136L, 
            138L, 139L, 140L, 141L, 142L, 143L, 144L, 145L, 146L, 147L, 148L, 149L, 150L), Fold03 = c(1L, 2L, 3L, 5L, 6L, 
            7L, 8L, 9L, 10L, 12L, 13L, 14L, 15L, 16L, 19L, 20L, 21L, 22L, 23L, 24L, 25L, 27L, 28L, 29L, 30L, 31L, 32L, 33L, 
            34L, 35L, 36L, 37L, 38L, 39L, 40L, 41L, 42L, 43L, 44L, 45L, 46L, 47L, 48L, 49L, 50L, 51L, 52L, 53L, 54L, 55L, 
            57L, 58L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 67L, 68L, 69L, 70L, 71L, 72L, 73L, 75L, 76L, 78L, 79L, 80L, 
            81L, 82L, 83L, 84L, 85L, 86L, 87L, 89L, 90L, 92L, 93L, 94L, 95L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 104L, 
            105L, 106L, 109L, 110L, 111L, 112L, 113L, 114L, 116L, 117L, 119L, 120L, 121L, 122L, 123L, 124L, 125L, 126L, 127L, 
            128L, 129L, 130L, 131L, 132L, 133L, 134L, 135L, 136L, 137L, 138L, 139L, 140L, 141L, 142L, 143L, 144L, 145L, 146L, 
            147L, 148L, 149L, 150L), Fold04 = c(1L, 2L, 3L, 4L, 5L, 7L, 8L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 
            19L, 20L, 21L, 22L, 23L, 24L, 25L, 26L, 27L, 28L, 30L, 31L, 32L, 33L, 34L, 35L, 36L, 38L, 39L, 40L, 41L, 42L, 
            43L, 44L, 45L, 46L, 47L, 48L, 50L, 52L, 53L, 54L, 55L, 56L, 57L, 58L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 
            67L, 69L, 70L, 71L, 72L, 73L, 74L, 76L, 77L, 78L, 79L, 80L, 81L, 82L, 84L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 
            92L, 93L, 94L, 95L, 97L, 98L, 99L, 100L, 102L, 103L, 104L, 105L, 106L, 107L, 108L, 109L, 110L, 111L, 112L, 113L, 
            114L, 115L, 116L, 117L, 118L, 120L, 122L, 123L, 124L, 125L, 126L, 128L, 129L, 130L, 131L, 132L, 133L, 134L, 135L, 
            136L, 137L, 138L, 139L, 140L, 141L, 143L, 144L, 145L, 146L, 147L, 148L, 149L, 150L), Fold05 = c(1L, 2L, 3L, 4L, 
            5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 20L, 21L, 22L, 23L, 24L, 25L, 26L, 29L, 
            30L, 31L, 32L, 33L, 34L, 35L, 36L, 37L, 38L, 40L, 41L, 42L, 43L, 44L, 45L, 47L, 48L, 49L, 51L, 52L, 53L, 54L, 
            55L, 56L, 57L, 58L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 67L, 68L, 69L, 71L, 72L, 73L, 74L, 75L, 77L, 78L, 
            79L, 80L, 81L, 82L, 83L, 84L, 85L, 86L, 88L, 89L, 91L, 93L, 94L, 95L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 103L, 
            104L, 105L, 106L, 107L, 108L, 109L, 110L, 111L, 112L, 113L, 114L, 115L, 116L, 117L, 118L, 119L, 121L, 122L, 123L, 
            124L, 125L, 126L, 127L, 128L, 129L, 131L, 132L, 133L, 134L, 135L, 136L, 137L, 138L, 140L, 142L, 143L, 144L, 145L, 
            146L, 147L, 148L, 150L), Fold06 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 
            20L, 21L, 22L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 30L, 31L, 32L, 33L, 35L, 36L, 37L, 39L, 40L, 41L, 42L, 44L, 
            45L, 46L, 47L, 48L, 49L, 50L, 51L, 52L, 54L, 55L, 56L, 57L, 58L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 67L, 
            68L, 70L, 71L, 72L, 73L, 74L, 75L, 76L, 77L, 78L, 79L, 80L, 82L, 83L, 84L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 
            92L, 94L, 95L, 96L, 97L, 99L, 100L, 101L, 103L, 104L, 105L, 106L, 107L, 108L, 109L, 110L, 111L, 112L, 113L, 114L, 
            115L, 117L, 118L, 119L, 120L, 121L, 122L, 123L, 124L, 125L, 127L, 128L, 129L, 130L, 131L, 132L, 134L, 135L, 136L, 
            137L, 138L, 139L, 140L, 141L, 142L, 143L, 144L, 145L, 146L, 147L, 149L, 150L), Fold07 = c(1L, 2L, 3L, 4L, 5L, 
            6L, 8L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 22L, 24L, 25L, 26L, 27L, 28L, 29L, 30L, 31L, 32L, 
            33L, 34L, 35L, 36L, 37L, 38L, 39L, 40L, 41L, 43L, 44L, 45L, 46L, 47L, 48L, 49L, 50L, 51L, 53L, 54L, 55L, 56L, 
            57L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 67L, 68L, 69L, 70L, 71L, 72L, 73L, 74L, 75L, 76L, 77L, 79L, 80L, 
            81L, 82L, 83L, 84L, 85L, 87L, 88L, 89L, 90L, 91L, 92L, 93L, 94L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 103L, 
            104L, 105L, 106L, 107L, 108L, 109L, 110L, 111L, 112L, 114L, 115L, 116L, 117L, 118L, 119L, 120L, 121L, 122L, 123L, 
            124L, 125L, 126L, 127L, 128L, 129L, 130L, 131L, 132L, 133L, 135L, 136L, 137L, 139L, 141L, 142L, 143L, 144L, 146L, 
            147L, 148L, 149L, 150L), Fold08 = c(1L, 3L, 4L, 6L, 7L, 9L, 10L, 11L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 20L, 
            21L, 22L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 30L, 31L, 32L, 33L, 34L, 35L, 36L, 37L, 38L, 39L, 40L, 41L, 42L, 
            43L, 44L, 46L, 47L, 48L, 49L, 50L, 51L, 52L, 53L, 55L, 56L, 57L, 58L, 60L, 62L, 64L, 65L, 66L, 67L, 68L, 69L, 
            70L, 71L, 72L, 73L, 74L, 75L, 76L, 77L, 78L, 80L, 81L, 82L, 83L, 84L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 92L, 
            93L, 94L, 95L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 103L, 104L, 105L, 106L, 107L, 108L, 109L, 110L, 112L, 113L, 
            114L, 115L, 116L, 117L, 118L, 119L, 120L, 121L, 122L, 125L, 126L, 127L, 128L, 129L, 130L, 131L, 132L, 133L, 134L, 
            135L, 136L, 137L, 138L, 139L, 140L, 141L, 142L, 143L, 145L, 146L, 147L, 148L, 149L), Fold09 = c(2L, 3L, 4L, 5L, 
            6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 20L, 21L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 
            30L, 31L, 34L, 35L, 36L, 37L, 38L, 39L, 41L, 42L, 43L, 44L, 45L, 46L, 47L, 48L, 49L, 50L, 51L, 52L, 53L, 54L, 
            55L, 56L, 57L, 58L, 59L, 60L, 61L, 63L, 64L, 65L, 66L, 68L, 69L, 70L, 71L, 72L, 73L, 74L, 75L, 76L, 77L, 78L, 
            79L, 81L, 82L, 83L, 84L, 86L, 87L, 88L, 90L, 91L, 92L, 93L, 94L, 95L, 96L, 97L, 98L, 99L, 100L, 101L, 102L, 103L, 
            105L, 106L, 107L, 108L, 110L, 111L, 112L, 113L, 114L, 115L, 116L, 117L, 118L, 119L, 120L, 121L, 122L, 123L, 124L, 
            125L, 126L, 127L, 129L, 130L, 131L, 132L, 133L, 134L, 135L, 136L, 137L, 138L, 139L, 140L, 141L, 142L, 143L, 144L, 
            145L, 148L, 149L, 150L), Fold10 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L, 12L, 13L, 15L, 16L, 17L, 18L, 
            19L, 20L, 21L, 22L, 23L, 26L, 27L, 28L, 29L, 30L, 31L, 32L, 33L, 34L, 35L, 37L, 38L, 39L, 40L, 41L, 42L, 43L, 
            45L, 46L, 47L, 48L, 49L, 50L, 51L, 52L, 53L, 54L, 55L, 56L, 58L, 59L, 60L, 61L, 62L, 63L, 64L, 65L, 66L, 67L, 
            68L, 69L, 70L, 71L, 73L, 74L, 75L, 76L, 77L, 78L, 79L, 80L, 81L, 82L, 83L, 85L, 86L, 87L, 88L, 89L, 90L, 91L, 
            92L, 93L, 94L, 95L, 96L, 97L, 98L, 101L, 102L, 103L, 104L, 105L, 107L, 108L, 109L, 110L, 111L, 113L, 114L, 115L, 
            116L, 118L, 119L, 120L, 121L, 122L, 123L, 124L, 126L, 127L, 128L, 129L, 130L, 131L, 132L, 133L, 134L, 136L, 137L, 
            138L, 139L, 140L, 141L, 142L, 143L, 144L, 145L, 146L, 147L, 148L, 149L, 150L)), indexOut = list(Resample01 = c(3L, 
            15L, 31L, 47L, 48L, 55L, 64L, 66L, 94L, 97L, 105L, 122L, 129L, 136L, 143L), Resample02 = c(13L, 16L, 30L, 35L, 
            41L, 60L, 65L, 71L, 73L, 82L, 110L, 114L, 131L, 132L, 137L), Resample03 = c(4L, 11L, 17L, 18L, 26L, 56L, 74L, 
            77L, 88L, 91L, 103L, 107L, 108L, 115L, 118L), Resample04 = c(6L, 9L, 29L, 37L, 49L, 51L, 68L, 75L, 83L, 96L, 
            101L, 119L, 121L, 127L, 142L), Resample05 = c(27L, 28L, 39L, 46L, 50L, 70L, 76L, 87L, 90L, 92L, 120L, 130L, 139L, 
            141L, 149L), Resample06 = c(10L, 19L, 34L, 38L, 43L, 53L, 69L, 81L, 93L, 98L, 102L, 116L, 126L, 133L, 148L), 
            Resample07 = c(7L, 20L, 21L, 23L, 42L, 52L, 58L, 78L, 86L, 95L, 113L, 134L, 138L, 140L, 145L), Resample08 = c(2L, 
                5L, 8L, 12L, 45L, 54L, 59L, 61L, 63L, 79L, 111L, 123L, 124L, 144L, 150L), Resample09 = c(1L, 22L, 32L, 33L, 
                40L, 62L, 67L, 80L, 85L, 89L, 104L, 109L, 128L, 146L, 147L), Resample10 = c(14L, 24L, 25L, 36L, 44L, 57L, 
                72L, 84L, 99L, 100L, 106L, 112L, 117L, 125L, 135L)), indexFinal = NULL, timingSamps = 0, predictionBounds = c(FALSE, 
            FALSE), seeds = list(c(54425L, 623844L, 74362L, 46208L, 964632L, 409956L, 585893L, 859668L, 626546L, 926595L), 
            c(586329L, 689060L, 321503L, 841221L, 249762L, 765800L, 185658L, 13610L, 498846L, 683919L), c(391482L, 521508L, 
                238550L, 106093L, 743621L, 248034L, 507826L, 142296L, 426929L, 326554L), c(102662L, 340098L, 250883L, 343445L, 
                74743L, 359098L, 636968L, 286753L, 103L, 206957L), c(632137L, 823372L, 202505L, 675363L, 786448L, 323292L, 
                506862L, 295900L, 368258L, 79768L), c(25490L, 325230L, 506807L, 458901L, 251449L, 226279L, 625042L, 678669L, 
                316470L, 157984L), c(746781L, 63084L, 571769L, 301694L, 716793L, 627824L, 466205L, 434086L, 5261L, 903045L), 
            c(577847L, 665130L, 611064L, 25851L, 575133L, 526195L, 962080L, 36078L, 864879L, 339448L), c(938283L, 864165L, 
                8946L, 956322L, 902368L, 384214L, 344671L, 376660L, 772879L, 84394L), c(444604L, 860428L, 986522L, 531649L, 
                113464L, 492642L, 553308L, 684349L, 883726L, 82556L), 108127L), adaptive = list(min = 5, alpha = 0.05, method = "gls", 
            complete = TRUE), trim = FALSE, allowParallel = TRUE)
    caret:::trim_values(preds = predicted, ctrl = ctrl, is_num = is.null(lev))
}




