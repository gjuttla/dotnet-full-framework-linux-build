# dotnet-full-framework-linux-build
Sample `Directory.Build.targets` to build .NET Framework projects on Linux.

## Build
```
docker build -t myapp --build-arg FX=net(35|45) .
```

## Run
```
docker run --rm myapp
```
