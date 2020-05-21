# Docker Image of Deno

[deno](https://deno.land) in a Container

## Usage

### Remember to build it first

```
docker build -t yourusername/deno:latest .
```

### Run The Deno App In Container

> Example: running example from deno https://deno.land/std/examples/welcome.ts

```
docker run -it --rm yourusername/deno:latest run https://deno.land/std/examples/welcome.ts
```

this should showing a **Welcome to Deno 🦕** output.

## Persisting cache

`TODO`

## Loch Ness

Sugestion will always be welcomed, help also welcomed. because im new in this kind of things.

[MIT License](./LICENSE) © 2020, Permadi Afrian
