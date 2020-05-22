FROM debian:10-slim

RUN useradd -ms /bin/bash deno

ENV DENO_INSTALL="/usr/local"
ENV PATH="$DENO_INSTALL/bin:$PATH"
ENV DENO_DIR="/home/deno/.cache"

RUN apt update && apt install curl unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

RUN mkdir ${DENO_DIR}

RUN chown -hR deno:deno ${DENO_DIR}

USER deno

VOLUME [ ${DENO_DIR} ]

WORKDIR /home/deno/app

ENTRYPOINT ["deno"]