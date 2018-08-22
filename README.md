
# SpectX compression utilities in a container

This repo hosts a Dockerfile for building containerized version of [SpectX compression utility](https://docs.spectx.com/pages/admin_manual/sxgzip.html#sxgzip).

Before building copy the `sxgziputil-v*.tar.gz` file from SpectX `tools/` directory to here, then run `./build.sh`.

Oracle Server JRE image is also required, so see [instructions](https://github.com/oracle/docker-images/tree/master/OracleJava/) and build `oracle/serverjre:8` yourself first.
