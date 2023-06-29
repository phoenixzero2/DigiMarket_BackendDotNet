#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["DigiMarketWebApi/DigiMarketWebApi.csproj", "DigiMarketWebApi/"]
COPY ["Core/Core.csproj", "Core/"]
COPY ["DbRepository/DbRepository.csproj", "DbRepository/"]
COPY ["DataTransferObject/DataTransferObject.csproj", "DataTransferObject/"]
COPY ["Thirdparty/Thirdparty.csproj", "Thirdparty/"]
RUN dotnet restore "DigiMarketWebApi/DigiMarketWebApi.csproj"
COPY . .
WORKDIR "/src/DigiMarketWebApi"
RUN dotnet build "DigiMarketWebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DigiMarketWebApi.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DigiMarketWebApi.dll"]