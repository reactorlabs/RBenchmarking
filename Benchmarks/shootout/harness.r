library(peakRAM)

verifyResult <- function(x, ...) {
    UseMethod("verifyResult", x)
}

verifyResult.default <- function(result, benchmarkParameter) {
    TRUE
}

innerBenchmarkLoop <- function(x, ...) {
    UseMethod("innerBenchmarkLoop", x)
}
rir.annotateDepromised <- function(x) x

innerBenchmarkLoop.default <- function(class, benchmarkParameter, innerIterations) {
    
    
    
    for (i in 1:innerIterations) {
        
        
       
        mem <- peakRAM(
            result <- execute(benchmarkParameter)
        )

        memoryRuns <<- c(memoryRuns, mem[[4]]) 


        if (!verifyResult(result, benchmarkParameter)) {
            return(FALSE)
        }
    }
    return(TRUE)
}


memoryRuns <- c()

doRuns <- function(name, iterations, benchmarkParameter, innerIterations) {
 

    memoryRuns <<- c() 

    recordMeasurement <<- function(mem){

        suite <- paste("shootout", if (grepl("strict", name)) "_annotations" else "", sep="")
        benchmarkName <- tail(strsplit(name, "/")[[1]], n=1)
            

        line <- paste(suite,  benchmarkName, paste(suite,benchmarkName, sep="/"), 
          mem, sep=",")     
        write(line, file = "~/dataPeakMemory",
        append = TRUE)

    }

    
    

    total <- 0
    class(name) <- tolower(name)
    
    for (i in 1:iterations) {
        startTime <- Sys.time()
        
      
        if (!innerBenchmarkLoop(name, benchmarkParameter, innerIterations)) {
            stop("Benchmark failed with incorrect result")
        }
    
        
        endTime <- Sys.time()
        runTime <- (as.numeric(endTime) - as.numeric(startTime)) * 1000000

        cat(name, ": iterations=1 runtime: ", round(runTime), "us\n", sep = "")
        total <- total + runTime
    }

    recordMeasurement(mean(memoryRuns))
    total
}

run <- function(args) {
    if (length(args) < 3 || 4 < length(args))
        stop(printUsage())

    name <- args[[1]]
    numIterations <- strtoi(args[[2]])
    benchmarkParameter <- strtoi(args[[3]])
    innerIterations <- if (length(args) > 3) strtoi(args[[4]]) else 1

    source(file.path(".", paste(tolower(name), ".r", sep="")))
    
    total <- as.numeric(doRuns(name, numIterations, benchmarkParameter, innerIterations));
    cat(name, ": ",
        "iterations=", numIterations, "; ",
        "average: ", round(total / numIterations), " us; ",
        "total: ", round(total), "us\n\n", sep="")
    #cat("Total runtime: ", total, "us\n\n", sep="")
}

printUsage <- function() {
    cat("harness.r benchmark num-iterations benchmark-parameter [inner-iter]\n")
    cat("\n")
    cat("  benchmark           - benchmark class name\n")
    cat("  num-iterations      - number of times to execute benchmark\n")
    cat("  benchmark-parameter - size of the benchmark problem\n")
    cat("  inner-iter          - number of times the benchmark is executed in an inner loop,\n")
    cat("                        which is measured in total, default: 1\n")
}

run(commandArgs(trailingOnly=TRUE))
