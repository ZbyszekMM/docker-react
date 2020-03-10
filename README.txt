PURPOSE:
    Pokazuje production grade CI workflow (z githhub, Travis i Beanstalk), przedmiot sekcji 6, 7 kursu dockera.
    Dodatkowo pojawia się nginx, multistep Dockerfile, 

KONFIGURACJA:
    *) W git ten cholery name "origin" zastąpiłem S7. Czyli S7 jest skojarzone (zastępuje w instrukcjach) url-watą nazwę repo w github.

LAUNCH:
    *) Wersja deweloperska: localhost:port (w docker-compose jest chwilowo 3000)
    *) Wersja produkcyjna - trzeba odbudować instance na AWS:
        *) stworzyć aplikację i środowisko w Beanstalk
        *) ustawić specyficzne dla ten instancji Beanstalk atrybuty w .travis.yml 
        *) koniecznie spradzić travis.yml yamllintem
        *) zaktualizować github:
            *) git add .travis.yml   (dodaje do git-staging area, na pewno ten plik trzeba zmodyfikować)
            *) git commit -m "my comment" (komituje pliki w staging area do lokalnego mastera)
            *) git push S7 master (wysyła do zdalnego repozytorium - chyba lokalny branch master)

POPRAWKI
    w package.json trzeba było zmienić klucz "test" dodająć "CI=true". Bez tego travis wisiał w nieskonczoność

