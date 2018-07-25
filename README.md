This repository aims at providing all the necessary stuff for benchmarking RIR and compare it to other (language) implementations. To make the benchmarking reproducible we resort on [ReBench](https://github.com/smarr/ReBench/). We report the results in the web by using [codespeed](https://github.com/tobami/codespeed).

# Setup
To setup the repository for running the benchmarks just run: `Setup/setup.sh`

# Run the benchmarks
To run all the benchmarks: `rebench rebench.conf`

To run only RIR benchmarks: `rebench rebench.conf vm:RIR`

For more details on *ReBench* [see its official documentation](http://rebench.readthedocs.io/) 
