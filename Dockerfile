FROM busybox:latest AS build

# Get latest version from SpectX distribution 'tools' directory
ENV SXUTIL_PKG=sxgziputil-v*.tar.gz
ADD $SXUTIL_PKG /tmp

# Remove windows-specific and other unwanted files
RUN cd /tmp/sxgziputil/bin && \
  rm *.bat && \
  rm README && \
  rm sxwrapper*

# See https://github.com/oracle/docker-images/tree/master/OracleJava/java-8
FROM oracle/serverjre:8

# Or see https://store.docker.com/images/oracle-serverjre-8
# FROM store/oracle/serverjre:8

# Copy just the jar and shell scripts
COPY --from=build /tmp/sxgziputil/bin/* /usr/local/bin/
