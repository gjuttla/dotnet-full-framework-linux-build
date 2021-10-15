FROM mcr.microsoft.com/dotnet/sdk:3.1 as build

ARG FX

COPY . /myapp
WORKDIR /myapp

RUN dotnet restore myapp.sln
RUN dotnet publish ./app/app.csproj -o bin -f $FX

FROM mono

RUN mkdir /myapp
WORKDIR /myapp

COPY --from=build /myapp/bin /myapp

CMD [ "mono", "app.exe" ]
