CEL
    Pokazuje production grade CI workflow (z githhub, Travis i Beanstalk <EBS>), przedmiot sekcji 6, 7 kursu dockera.
    Dodatkowo pojawia się:
        nginx - w tym projekcie jest tylko web serwerem, nie robi routingu (to jest w Fibo)
        multistage Dockerfile - dyrektywa FROM pojawia się kilka razy		
        react - 

URUCHOMIENIE 
      lokalnie - zajrzyj do Dockerfile
      na AWS - trzeba odtworzyć aplikację docker-react w EBS (prościutki krok). 
                dalej, stworzyć środowisko "DockerReact-env" - Base technology = docker
                dalej, zmienić jakiś plik aplikacji, w git wykonać stage, commit, push
                Nazwa aplikacji i środowiska EBS pojawia się w .travis
                To striggeruje travis do zbudowania kontenerów i zdeployowania kodu w AWS EBS


POPRAWKI
    w package.json trzeba było zmienić klucz "test" dodająć "CI=true". Bez tego travis wisiał w nieskonczoność

PLIKI
	.\src - właściwie wszystko z gotowego templejtu react	
	.\src\app.js - główna aplikacja sterująca frontendem

REPOZYTORIUM W GITHUB
    docker-react

QUIRKS
    Sposób w jaki AWS EBS przetwarza dyrektywę EXPOSE z Dockerfile
    Żeby zapanować nad "origin" używanym przez git remote, nazwałem tę asocjacje do zdalnego repo S7 zamiast origin 
         git remote add assoc-name remote-ulr
