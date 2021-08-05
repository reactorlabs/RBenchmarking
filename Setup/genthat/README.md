# Extracting the function calls from packages with genthat

## Usage

``` console
# 1. Modifiy packages.txt as wanted

# 2. Create the docker image
docker build -t extract-testcases-img .

# 3. Install the packages inside the container and extract the function calls
#    to /tmp/testcases
mkdir -p /tmp/testcases
docker run --rm --mount type=bind,src=/tmp/testcases,dst=/opt/testcases extract-testcases-img
```

You can now copy the testcases you want to keep inside `Benchmarks/genthat-CRAN/generated`

## Debugging

You can open a shell inside the container without running the main command using:

```
docker run --rm --mount type=bind,src=/tmp/testcases,dest=/opt/testcases extract-testcases bash

# run the main command inside the container
root@cd742d5ad0ac:/# /opt/setup-scripts/container/run.sh
```

## Reproducibility

Reproducibility is assured by the use of MRAN: the packages are always installed from the same CRAN snapshot,
and the version of R used is fixed (3.6.2).

## TODO:

Unify base image for test extraction and for running the benchmarks: in both it is necessary to install the R
packages. It would make sense to have a common base with R + the CRAN packages installed, instead of installing
the packages independently in both containers.
