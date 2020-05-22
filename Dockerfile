FROM debian:10-slim

LABEL maintainer="permadi.afrian@gmail.com" \
      description="A Deno inside a Container" \
      version="1.0"

RUN useradd -ms /bin/bash deno

ENV DENO_INSTALL="/usr/local" \
    PATH="$DENO_INSTALL/bin:$PATH" \
    DENO_DIR="/home/deno/.cache"

RUN apt-get update \
    && apt-get install curl unzip -y \
    && curl -fsSL https://deno.land/x/install/install.sh | sh

RUN mkdir ${DENO_DIR} \
    && chown -hR deno:deno ${DENO_DIR}

USER deno

VOLUME [ ${DENO_DIR} ]

WORKDIR /home/deno/app

ENTRYPOINT ["deno"]