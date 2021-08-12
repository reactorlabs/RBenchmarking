library(peakRAM)

innerBenchmarkLoop.default <- function(class, iterations) {


  for (i in 1:iterations) {


     mem <- peakRAM( 
        result <- execute()
    )
    memoryRuns <<- c(memoryRuns, mem[[4]]) 


    if (!verifyResult(result, iterations)) {
        return(FALSE)
    }

  }

 
  return(TRUE)
}

innerBenchmarkLoop <- function(x, ...) {


  UseMethod("innerBenchmarkLoop", x)

  

}
rir.annotateDepromised <- function(x) x

memoryRuns <- c()

doRuns <- function(name, iterations, innerIterations) {

  memoryRuns <<- c() 

  recordMeasurement <<- function(mem){

        suite <- "are-we-fast-r"
        benchmarkName <- tail(strsplit(name, "/")[[1]], n=1)
            

        line <- paste(suite, benchmarkName,paste(suite,benchmarkName, sep="/"),
            mem, sep=",")     
        write(line, file = "~/dataPeakMemory",
        append = TRUE)

  }

  
  total <- 0
  class(name) = tolower(name)
  for (i in 1:iterations) {
    
    startTime =  Sys.time()


    if (!innerBenchmarkLoop(name, innerIterations)) {
      
      stop ("Benchmark failed with incorrect result")
    }

    
    
    endTime <- Sys.time()
    runTime = (as.numeric(endTime) - as.numeric(startTime)) * 1000000 

    cat(paste(paste(paste(name, ": iterations=1 runtime:", sep = ""), 
            round(runTime)), "us\n", sep = ""))
    total = total + runTime
  }

  recordMeasurement(mean(memoryRuns))
  return (total)
}

run <- function(args) {
  if (length(args) == 0)
    stop(printUsage())

  name = args[1]
  
  numIterations = 1 
  innerIterations = 1
  
  if (length(args) > 1) {
    numIterations = strtoi(args[2])
    if (length(args) > 2) {
      innerIterations = strtoi(args[3]);
    }
  }

  source(paste(paste("./", tolower(name), sep = ""), ".r", sep = ""))
  
  total = as.numeric(doRuns(name, numIterations, innerIterations));
  cat(paste(paste(name, ": iterations=", sep=""), numIterations, sep=""))
  cat(paste("; average:", round(total / numIterations)))
  cat(paste(paste(" us; total:", round(total)), "us\n\n", sep=""))
  #cat("\n")
  #cat(paste(paste("Total Runtime:", round(total)), "us\n\n", sep=""))
}

printUsage <- function() {
  cat("harness.r [benchmark] [num-iterations [inner-iter]]\n")
  cat("\n")
  cat("  benchmark      - benchmark class name\n")
  cat("  num-iterations - number of times to execute benchmark, default: 1\n")
  cat("  inner-iter     - number of times the benchmark is executed in an inner loop,\n")
  cat("                   which is measured in total, default: 1\n")
}

run(commandArgs(trailingOnly=TRUE))