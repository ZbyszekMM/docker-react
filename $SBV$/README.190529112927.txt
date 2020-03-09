CEL
    Pokazuje production grade CI workflow (z githhub, Travis i Beanstalk <EBS>), przedmiot sekcji 6, 7 kursu dockera.
    Dodatkowo pojawia się nginx, multistep Dockerfile, 

URUCHOMIENIE 
      lokalnie - zajrzyj do Dockerfile
      na AWS - trzeba odtworzyć aplikację docker-react w EBS (prościutki krok). 
                dalej, stworzyć środowisko "DockerReact-env" - Base technology = docker
                dalej, zmienić jakiś plik aplikacji, w git wykonać stage, commit, push
                Nazwa aplikacji i środowiska EBS pojawia się w .travis
                To striggeruje travis do zbudowania kontenerów i zdeployowania kodu w AWS EBS


POPRAWKI
    w package.json trzeba było zmienić klucz "test" dodająć "CI=true". Bez tego travis wisiał w nieskonczoność

