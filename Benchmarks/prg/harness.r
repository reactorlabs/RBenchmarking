# Harness for the SpeedTest benchmark suite.
#
# Each benchmark is a single .R file that defines
#   execute <- function(<param> = <default>) { ... }
# Benchmarks are run with their default arguments, so the harness only needs
# the benchmark name and the number of iterations to measure.
#
# Output follows the format expected by ReBench's RebenchLog gauge adapter:
#   <name>: iterations=1 runtime: <microseconds>us

findBenchmark <- function(name) {
  files <- list.files(".", pattern = "\\.R$", recursive = TRUE, full.names = TRUE)
  hits <- files[basename(files) == paste(name, ".R", sep = "")]
  if (length(hits) == 0)
    stop(paste("Benchmark file not found: ", name, ".R", sep = ""))
  hits[[1]]
}

doRuns <- function(name, iterations, benchmarkParameter) {
  total <- 0
  for (i in 1:iterations) {
    startTime <- Sys.time()
    invisible(execute(benchmarkParameter))
    endTime <- Sys.time()
    runTime <- (as.numeric(endTime) - as.numeric(startTime)) * 1000000

    cat(name, ": iterations=1 runtime: ", round(runTime), "us\n", sep = "")
    total <- total + runTime
  }
  total
}

run <- function(args) {
  if (length(args) < 3 || 3 < length(args))
    stop(printUsage())

  name <- args[[1]]
  numIterations <- strtoi(args[[2]])
  benchmarkParameter <- strtoi(args[[3]])

  source(findBenchmark(name))

  total <- as.numeric(doRuns(name, numIterations, benchmarkParameter))
  cat(name, ": ",
      "iterations=", numIterations, "; ",
      "average: ", round(total / numIterations), " us; ",
      "total: ", round(total), "us\n\n", sep = "")
}

printUsage <- function() {
  cat("harness.r benchmark num-iterations benchmark-parameter\n")
  cat("\n")
  cat("  benchmark            - benchmark name (file <name>.R defining execute())\n")
  cat("  num-iterations       - number of times to execute benchmark\n")
  cat("  benchmark-parameter  - size parameter passed to execute()\n")
}

run(commandArgs(trailingOnly = TRUE))
