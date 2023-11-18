# Build Base Image
```bash
docker build -f ./dev/base.Dockerfile -t joyfourl/dev-base:latest ./dev
```

# Build Node.Js Image
```bash
docker build -f ./dev/node.Dockerfile -t joyfourl/dev-node:latest ./dev
```

# Build Dotnet Image
```bash
docker build -f ./dev/dotnet.Dockerfile -t joyfourl/dev-dotnet:latest ./dev
```

# Build Java Image
```bash
docker build -f ./dev/java.Dockerfile -t joyfourl/dev-java:latest ./dev
```

# Build Deno Image
```bash
docker build -f ./dev/deno.Dockerfile -t joyfourl/dev-deno:latest ./dev
```

# Build Bun Image
```bash
docker build -f ./dev/bun.Dockerfile -t joyfourl/dev-bun:latest ./dev
```

# Build Dotnet-Dapr Image
```bash
docker build -f ./dev/dotnet-dapr.Dockerfile -t joyfourl/dev-dotnet-dapr:latest ./dev
```

# Build Java-Dapr Image
```bash
docker build -f ./dev/java-dapr.Dockerfile -t joyfourl/dev-java-dapr:latest ./dev
```