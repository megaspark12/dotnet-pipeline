FROM mcr.microsoft.com/dotnet/sdk:latest as build
WORKDIR /app
COPY console .
RUN dotnet restore
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/runtime:6.0 as runtime
WORKDIR /app
COPY --from=build /app/console.csproj .
COPY --from=build /app/out .
ENTRYPOINT [ "dotnet", "console.dll"]