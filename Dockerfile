FROM mcr.microsoft.com/dotnet/sdk:5.0 as build

WORKDIR /tmp
COPY app app

WORKDIR /tmp/app
RUN dotnet build -o net35 -f net35

FROM mono 

RUN mkdir /app
WORKDIR /app

COPY --from=build /tmp/app/net35/app.exe /app/app.exe

CMD [ "mono", "app.exe" ]
