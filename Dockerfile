# MULTI-STEP builds
# tworzenie image'u:  docker build .    KROPKA jest ważna
# uruchomienie docker run -p [port-docelowy]:80 [image]
# wywołanie 192.168.99.100:[port-docelowy] s


# ten Dockerfile jest podzbiorem Dockerfile.dev - przynajmniej pierwsza sekcja, ponieważ operacje mapowania wolumenów, są niepotrzebne dla 
# wersji produkcyjnej

# tworzy tag dla wyniku (?) tej sekcji (po angielsku - mylące - step)
FROM node:alpine as builder  
WORKDIR '/app'
COPY package.json .
RUN npm install

# dopiero teraz kopiowany jest kod aplikacji. Bądź co bądź ten się najczęściej zmienia, a dependencje zciągnięte wyżej - rzadko
COPY . .
RUN npm run build


# DRUGA sekcja. Nginx jest od razu uruchomiony w momencie uruchomienia kontenera stąd brak "RUN".
# NA produkcji istotne jest tylko to co jest w katalogu build. Kopiowane jest to katalogu, w którym nginx spodziewa się zawartości
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html