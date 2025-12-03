# 1. lépés: Node.js környezet letöltése
FROM node:18-alpine

# 2. lépés: Munkakönyvtár kijelölése a konténeren belül
WORKDIR /app

# 3. lépés: A package.json fájlok másolása (a függőségek telepítéséhez)
COPY package*.json ./

# 4. lépés: Függőségek telepítése
RUN npm install

# 5. lépés: A teljes forráskód másolása
COPY . .

# 6. lépés: Buildelés (TypeScript -> JavaScript fordítás)
RUN npm run build

# 7. lépés: Port megnyitása (A NestJS alapból a 3000-et használja)
EXPOSE 3000

# 8. lépés: Az alkalmazás indítása
CMD ["npm", "run", "start:prod"]
