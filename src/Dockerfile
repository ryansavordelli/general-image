#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM ubuntu
WORKDIR /app
#EXPOSE 80
#EXPOSE 443

RUN apt-get update && apt-get install -y htop

COPY --chmod=755 src/resources/base.sh /app/base.sh
RUN /app/base.sh


