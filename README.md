## DevOps Projektfeladat - Hello World App
Ez egy egyszerű Nest.js alapú alkalmazás a DevOps órai beadandóhoz.

## 1. Helyi fejlesztés és futtatás

A projekt előkészítése és függőségek telepítése:
```bash
$ npm install
```

## Alkalmazás indítása fejlesztői módban

```bash
# Az alkalmazás elérhető a következő címen: http://localhost:3000
$ npm run start

# Buildelés:
$ npm run build
```

## Dockerizálás

```bash
# Docker image készítése
$ docker build -t hello-devops:v1 .

# Konténer futtatása
$ docker run -p 3000:3000 hello-devops:v1
```