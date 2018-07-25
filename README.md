This repository aims at providing all the necessary stuff for benchmarking RIR and compare it to other (language) implementations. 

# Setup
To setup the repository for running the benchmarks just run: `Setup/setup.sh`

# Update
To update the repository (including the benchmarks and implementations) run: `Setup/update.sh`

# Benchmarks
We use a harness for benchmarking complying with the format of the [are-we-fast suite](https://github.com/smarr/are-we-fast-yet). 

# Reproducibility
To make the benchmarking reproducible we resort on [ReBench](https://github.com/smarr/ReBench/). 

# Reporting 
We report the results in the web by using [codespeed](https://github.com/tobami/codespeed).

# Run the benchmarks
To run all the benchmarks: `rebench rebench.conf`
To run only RIR benchmarks: `rebench rebench.conf vm:RIR`
For more details on *ReBench* [see its official documentation](http://rebench.readthedocs.io/)
