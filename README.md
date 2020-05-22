# Docker Image of Deno

[deno](https://deno.land) in a Container

## Usage

### Pull from Docker Hub

Pull the image from the [dockerhub](https://hub.docker.com/r/permadiafrian/deno)

```
docker pull permadiafrian/deno:latest
```

### or Build Your Own

```
docker build -t yourusername/deno:latest .
```

### Run The Deno App In Container

> Example: running example from deno https://deno.land/std/examples/welcome.ts

```
docker run -it --rm permadiafrian/deno:latest run https://deno.land/std/examples/welcome.ts
```

this should showing a **Welcome to Deno 🦕** output.

### Persisting cache

> Deno cache directory: `/home/deno/.cache`
> You can mount a named volume to Deno cache for saving downloaded and compiled library.

- Create a volume first

```
docker volume create denocache
```

- Finally, mount it to

```
docker run -it --rm -v denocache:/home/deno/.cache permadiafrian/deno:latest run https://deno.land/std/examples/welcome.ts
```

## Loch Ness

Im still looking for the monster inside Loch Ness. Any kind of help, advice and criticism will always be welcomed.

[MIT License](./LICENSE) © 2020, Permadi Afrian
