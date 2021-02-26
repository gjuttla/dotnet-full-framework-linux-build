FROM mcr.microsoft.com/dotnet/sdk:5.0 as build

RUN mkdir /tmp/app
WORKDIR /tmp/app

COPY net35app.csproj net35app.csproj
COPY Program.cs Program.cs

RUN dotnet build -o out

FROM mono 

RUN mkdir /app
WORKDIR /app

COPY --from=build /tmp/app/out/net35app.exe /app/net35app.exe

CMD [ "mono", "./net35app.exe" ]
