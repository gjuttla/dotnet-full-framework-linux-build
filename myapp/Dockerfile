FROM mcr.microsoft.com/dotnet/sdk:3.1 as build

COPY . /myapp
WORKDIR /myapp

RUN dotnet restore myapp.sln
RUN dotnet publish ./app/app.csproj -o net35 -f net35

FROM mono 

RUN mkdir /myapp
WORKDIR /myapp

COPY --from=build /myapp/net35 /myapp

CMD [ "mono", "app.exe" ]
