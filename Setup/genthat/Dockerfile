FROM r-base:3.6.2
#RUN apt-get update && apt-get upgrade && \
COPY . /opt/setup-scripts
RUN apt-get update && \
    apt-get install -y -qq libcurl4-openssl-dev libssl-dev && \
    rm -rf /var/lib/apt/lists/*
CMD [ "/opt/setup-scripts/container/run.sh" ]
