## DevOps Projektfeladat - Hello World App
Ez egy egyszerű Nest.js alapú alkalmazás a DevOps órai beadandóhoz.

**Készítette:** Breier Ádám
**Neptunkód:** EW5HY4
**Szak:** Mérnökinformatika Bsc

## Helyi fejlesztés és futtatás

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

## CD - Felhő szolgáltatás használata 

Az alkalmazás automatikusan kerül publikálásra a **Render.com** felhőszolgáltatásba minden `main` ágra történő módosítás után.

- **Szolgáltató:** Render
- **Típus:** Web Service (Docker runtime)
- **Publikus URL:** https://devops-yqp2.onrender.com

**Deploy folyamat:**
1. A Render.com össze lett kötve a GitHub repository-val.
2. A `main` ágra érkező minden push automatikusan elindít egy új build folyamatot.
3. A rendszer a `Dockerfile` alapján elkészíti az image-et, és elindítja a konténert a felhőben.