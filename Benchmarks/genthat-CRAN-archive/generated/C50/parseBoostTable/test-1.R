

genthat_extracted_call <- function() {
    stp <- 154L
    srt <- 140L
    output <- c("", "C5.0 [Release 2.07 GPL Edition]  \tSat Aug  7 07:34:10 2021", "-------------------------------", "", 
        "Class specified by attribute `outcome'", "", "Read 150 cases (5 attributes) from undefined.data", "", "-----  Trial 0:  -----", 
        "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (50)", "Petal.Length > 1.9:", ":...Petal.Width > 1.7: virginica (46/1)", 
        "    Petal.Width <= 1.7:", "    :...Petal.Length <= 4.9: versicolor (48/1)", "        Petal.Length > 4.9: virginica (6/2)", 
        "", "-----  Trial 1:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (37.8)", "Petal.Length > 1.9:", 
        ":...Petal.Width > 1.8: virginica (25.7)", "    Petal.Width <= 1.8:", "    :...Sepal.Length <= 4.9: virginica (10.6/0.8)", 
        "        Sepal.Length > 4.9:", "        :...Petal.Length <= 5.3: versicolor (69.7/5.3)", "            Petal.Length > 5.3: virginica (6.1)", 
        "", "-----  Trial 2:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (28.8)", "Petal.Length > 1.9:", 
        ":...Petal.Width <= 1.7: versicolor (65.4/18.8)", "    Petal.Width > 1.7: virginica (55.9/7.5)", "", "-----  Trial 3:  -----", 
        "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (23.1)", "Petal.Length > 1.9:", ":...Petal.Width <= 1.3: versicolor (16.6)", 
        "    Petal.Width > 1.3:", "    :...Petal.Length > 5.1: virginica (24.1)", "        Petal.Length <= 5.1:", "        :...Sepal.Width > 3: versicolor (15.7/0.9)", 
        "            Sepal.Width <= 3:", "            :...Sepal.Length <= 6.4: virginica (63.1/10.2)", "                Sepal.Length > 6.4: versicolor (7.4)", 
        "", "-----  Trial 4:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (17.8)", "Petal.Length > 1.9:", 
        ":...Petal.Length > 4.8: virginica (67.2/16.8)", "    Petal.Length <= 4.8:", "    :...Petal.Width <= 1.6: versicolor (40.9)", 
        "        Petal.Width > 1.6: virginica (24.1/8.9)", "", "-----  Trial 5:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (14.3)", 
        "Petal.Length > 1.9:", ":...Petal.Width > 1.8: virginica (14.1)", "    Petal.Width <= 1.8:", "    :...Petal.Length > 5.3: virginica (7.4)", 
        "        Petal.Length <= 5.3:", "        :...Sepal.Width > 3: versicolor (20.8)", "            Sepal.Width <= 3:", 
        "            :...Petal.Width > 1.7: virginica (12.6)", "                Petal.Width <= 1.7:", "                :...Sepal.Length <= 4.9: virginica (9.7/2.5)", 
        "                    Sepal.Length > 4.9: versicolor (71.1/11.3)", "", "-----  Trial 6:  -----", "", "Decision tree:", 
        "", "Petal.Length <= 1.9: setosa (11.1)", "Petal.Length > 1.9:", ":...Petal.Length <= 4.9: versicolor (70.8/13.5)", 
        "    Petal.Length > 4.9: virginica (68.1/18)", "", "-----  Trial 7:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (9)", 
        "Petal.Length > 1.9:", ":...Petal.Length <= 4.4: versicolor (18.3)", "    Petal.Length > 4.4:", "    :...Petal.Width > 1.8: virginica (11.7)", 
        "        Petal.Width <= 1.8:", "        :...Sepal.Width > 3: versicolor (13.4/0.4)", "            Sepal.Width <= 3:", 
        "            :...Petal.Width > 1.7: virginica (21)", "                Petal.Width <= 1.7:", "                :...Sepal.Length <= 5.1: virginica (8.3)", 
        "                    Sepal.Length > 5.1:", "                    :...Petal.Width <= 1.5: virginica (43.2/15.5)", "                        Petal.Width > 1.5: versicolor (25.2/1.8)", 
        "", "-----  Trial 8:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (7.1)", "Petal.Length > 1.9:", 
        ":...Petal.Length > 4.9: virginica (56.6/18.3)", "    Petal.Length <= 4.9:", "    :...Petal.Width <= 1.6: versicolor (56.1)", 
        "        Petal.Width > 1.6: virginica (30.2/6.9)", "", "-----  Trial 9:  -----", "", "Decision tree:", "", "Petal.Length <= 1.9: setosa (5.7)", 
        "Petal.Length > 1.9:", ":...Sepal.Width <= 2.8:", "    :...Petal.Width <= 1.6: versicolor (60.7/17.4)", "    :   Petal.Width > 1.6: virginica (14.2)", 
        "    Sepal.Width > 2.8:", "    :...Petal.Length <= 5: versicolor (57.5/5.9)", "        Petal.Length > 5: virginica (11.9)", 
        "", "", "Evaluation on training data (150 cases):", "", "Trial\t    Decision Tree   ", "-----\t  ----------------  ", 
        "\t  Size      Errors  ", "", "   0\t     4    4( 2.7%)", "   1\t     5    8( 5.3%)", "   2\t     3    6( 4.0%)", 
        "   3\t     6   12( 8.0%)", "   4\t     4    5( 3.3%)", "   5\t     7    3( 2.0%)", "   6\t     3    8( 5.3%)", "   7\t     8   15(10.0%)", 
        "   8\t     4    3( 2.0%)", "   9\t     5    5( 3.3%)", "boost\t          0( 0.0%)   <<", "", "", "\t   (a)   (b)   (c)    <-classified as", 
        "\t  ----  ----  ----", "\t    50                (a): class setosa", "\t          50          (b): class versicolor", 
        "\t                50    (c): class virginica", "", "", "\tAttribute usage:", "", "\t100.00%\tPetal.Length", "\t 66.67%\tSepal.Width", 
        "\t 66.67%\tPetal.Width", "\t 48.00%\tSepal.Length", "", "", "Time: 0.0 secs")
    C50:::parseBoostTable(x = output[(srt[1] + 4):(stp[1] - 1)])
}




