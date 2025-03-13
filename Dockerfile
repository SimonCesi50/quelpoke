# Étape 1 : Build
FROM golang:1.23 AS builder

# Définir le répertoire de travail
WORKDIR /app

# Copier les ficiers nécéssaires
COPY go.mod ./
COPY index.tmpl.html ./
COPY main.go ./

RUN go build -o quelpoke main.go

EXPOSE 8080

# Lancer l'application
CMD ["./quelpoke"]