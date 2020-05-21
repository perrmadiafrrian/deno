FROM debian:10-slim

WORKDIR /install

RUN apt update && apt install curl unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"

VOLUME [ "/root/.deno" ]

WORKDIR /app

ENTRYPOINT ["deno"]