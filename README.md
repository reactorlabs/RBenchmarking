This repository aims at providing all the necessary stuff for benchmarking RIR and compare it to other (language) implementations. 

# Benchmarks
We use a harness for benchmarking complying with the format of the [are-we-fast suite](https://github.com/smarr/are-we-fast-yet). 

# Reproducibility
To make the benchmarking reproducible we resort on [ReBench](https://github.com/smarr/ReBench/). 

# Run the benchmarks

`Setup/run.sh rebench.conf Benchmarks path/to/rir path/to/gnur path/to/fastr e:EXPERIMENT -S`

Tested experiments are `PIR-LLVM`, `GNU-R` and `FASTR`.
