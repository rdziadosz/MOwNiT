# Labolatorium 2
Skrypt ~~częściowo~~ automatyzujący ćwiczenie 2 z MOwNiT.

## Wymagania
Wymagane posiadanie:

    sudo apt-get install tcl
    sudo apt-get install tcl-expect
    sudo apt-get install libgfortran3
    sudo apt-get install gnuplot-x11`

## Uruchomienie
Pliki umieścić w katalogu `data_1D` / `data_2D`.

### Zadanie 1, 2, 3
Uruchomienie poprzez:

    sh start.sh

Do adaptacji typu hp (zadanie 3) niezbędne jest wprowadzenie parametrów w pliku `start.sh`.

Wyniki i wykresy zapisywane są w katalogu `sprawko`.

### Zadanie 4
Uruchomienie poprzez:

    sh zad4.sh

Wyniki na `stdout`.



# Instrukcja
(działało na Ubuntu 18.04)

    sudo apt-get install tcl
    sudo apt-get install tcl-expect
    sudo apt-get install libgfortran3
    sudo apt-get install gnuplot-x11

Pobieramy to https://github.com/rdziadosz/MOwNiT/

I umieszczamy wszystkie pobrane pliki z folderu /lab2 do folderu Data_1D

Zadanie 1, 2, 3

Najpierw odkomentowujemy w tym pliku data1D/decks/deck.com to drugie `#ARCUS TANGENS`:
i dajemy tam swoje dane z kartki. Te same parametry wpisujemy również do pliku start.sh:

    readonly ZADANIE="1"
    readonly PARAM1="33"
    readonly PARAM2="0.51"

Potem uruchamiamy program: wchodząc w terminal i wchodząc do folderu data_1d i wpisujemy sh start.sh - potem wchodzimy w utworzony folder sprawko i kopiujemy wszystko do swojego gdzies utworzonego folderu z nazwą Zadanie A

potem robimy do tego 3 wykresy (które trzeba wyklikać ręcznie)

1 wykres:
Uruchamiamy terminal i w terminalu

    cd data_1D
    export UNAME=NazwiskoTwoje
    ../a.out
    deck

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    profile=one
    profile=one

robimy screenshota tego wykresu

wychodzimy z tego klikając CTRL C

dwa wykresy kolejne

wchodzimy do folderu data_1Dhp

    cd data_1Dhp
    ../hp1d
    10
    .001, 30
    1
    wpisujemy tu swoje parametry po przecinku, na przyklad: 32, 0.63 (to moje akurat)
    1
    1
    (tu robimy screenshota tego wykresu i klikamy w obrazek - w ten sposób zamykając go)
    2
    (tu robimy screenshota tego wykresu i klikamy w obrazek - w ten sposób zamykając go)
    CTRL C - wychodzimy - zamykamy


Zadanie B najpierw komentujemy poprzednie i odkomentowujemy #SINGULARITY: X**A + (1-x)**B
Wpisujemy swoje parametry z kartki.
Te same parametry wpisujemy również do pliku start.sh.
Potem uruchamiamy start.sh i tak jak w poprzednim zadaniu kopiujemy sobie wszystko co nam zwrócił program do folderu sprawko i znowu wykres do tego zadania

1 wykres:
Uruchamiamy terminal i w terminalu

    cd data_1D
    export UNAME=NazwiskoTwoje
    ../a.out
    deck

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    mesh
    refine,global
    end
    solve

    profile=one
    profile=one

robimy screenshota tego wykresu

wychodzimy z tego klikając CTRL C

dwa wykresy kolejne

wchodzimy do folderu data_1Dhp

    cd data_1Dhp
    ../hp1d
    10
    .001, 30
    2
    wpisujemy tu swoje parametry po przecinku, na przyklad: 0.69, 0.73 (to moje akurat)
    1
    1
    (tu robimy screenshota tego wykresu i klikamy w obrazek - w ten sposób zamykając go)
    2
    (tu robimy screenshota tego wykresu i klikamy w obrazek - w ten sposób zamykając go)
    CTRL C - wychodzimy - zamykamy



ZADANIE C
 to już jest 2D musimy pobrać z brancha 2d https://github.com/rdziadosz/MOwNiT/tree/2d i skopiować te pliki do folderu data_2D

    cd data_2Dhp
    ../hp2d
    1
    wpisujemy parametry swoje z zadania C ( moje to były: 54, 1.59, -1.73)
    20
    .01, 15
    (czekamy aż się to całe wykona)
    2
    mesh
    (robimy screenshota temu wykresowi)
    twodim
    (robimy screenshota temu wykresowi)
    rates
    przewijamy trochę wyżej i kopiujemy tą tabelkę, która nam powstała - u mnie powstało coś takiego - od 2 do 15 kopiujemy

       2   0.103E+03   0.549E+00    0.201E+01  -0.261E+00
       3   0.148E+03   0.357E+00    0.217E+01  -0.448E+00
       4   0.226E+03   0.229E+00    0.235E+01  -0.640E+00
       5   0.301E+03   0.166E+00    0.248E+01  -0.779E+00
       6   0.350E+03   0.150E+00    0.254E+01  -0.825E+00
       7   0.437E+03   0.975E-01    0.264E+01  -0.101E+01
       8   0.580E+03   0.633E-01    0.276E+01  -0.120E+01
       9   0.701E+03   0.442E-01    0.285E+01  -0.135E+01
      10   0.783E+03   0.397E-01    0.289E+01  -0.140E+01
      11   0.788E+03   0.369E-01    0.290E+01  -0.143E+01
      12   0.983E+03   0.251E-01    0.299E+01  -0.160E+01
      13   0.116E+04   0.181E-01    0.306E+01  -0.174E+01
      14   0.125E+04   0.149E-01    0.310E+01  -0.183E+01
      15   0.151E+04   0.106E-01    0.318E+01  -0.198E+01

i wklejamy tutaj do pliku `zad3hp.out` i zapisujemy w katalogu `data_2D`
Wpisujemy swoje parametry do deck.com, tym razem nie musimy ich wpisywac do start.sh


    cd data_2D
    sh start.sh
    (czekamy aż się wykona)
    wchodzimy do folderu sprawko i kopiujemy co nam wyszło

**WAŻNE INFO !!!**
tutaj mogą być problemy przy tworzeniu wykresów, bo czasami dla p=2, albo p=3 wychodzą 2 albo 3 wyniki, a program jest przygotowany pod 4
Jeśli wyszły Ci złe wykresy (niepodobne do tych ze sprawka przykładowego) musisz zmienic lab2zad1.tcl (zmniejszyc liczbe powtorzen) oraz wykresy.sh: linie 8-10 ORAZ 13-15 (np. sed -n 1,4p wycina 4 line z pliku dla p=1; sed -n 5,8p wycina 4 nastepne itd....)
Można by to lepiej napisac. **Pull requesty mile widziane :D**

i ostatni wykres

    cd data_2D
    export UNAME=NazwiskoTwoje
    ../a.out
    deck

    mesh
    refine,global
    end
    solve

    tridim
    (robimy screenshota temu wykresowi)


ZADANIE 4

Tutaj trzeba stworzyć swój wielomian, następnie wyliczyć pochodną i pochodną drugiego rzędu i podstawić do programu. A więc:

Tutaj przykładowy wielomian (weź jakiś inny, bo ten jest chyba mój): https://www.wolframalpha.com/input/?i=12.3x%5E4%2B2.1x%5E3-5x%5E2%2B5x-0.2

Pozamieniaj sobie te liczby co są przy x na inne

np. na: 6.3x^4+4.1x^3-6x^2+3x-0.4 - czy coś w ten deseń 🙂 nie zmieniaj znaków dodawania i odejmowania nigdzie

potem wyliczamy pochodną pierwszą -> tutaj na tej stronie można to zrobić wklejając swój wielomian: blog.etrapez.pl/pochodne/kalkulator-do-pochodnych/

I kalkulator do pochodnej drugiego rzędu: http://www.wolframalpha.com/widget/widgetPopup.jsp?p=v&id=7a741deadfd74116aa977c22cfed754c&title=Second+Derivative+Calculator&theme=blue&i0=e%5E3x%5E2-3&podSelect&includepodid=Input&showAssumptions=1&showWarnings=1

Następnie edytujesz ten kawałek:

    %
    OMEGA = (1.2*(x**4))+(1.8*(x**3))-(4*(x**2))+(12.5*x)-0.4
    OMEGAX = (4.8*(x**3))+(5.4*(x**2))-(8*x)+12.5
    OMEGAY = 0.d0
    OMEGAXX = (14.4*(x**2))+(10.8*x)-8
    OMEGAYY = 0.d0
    OMEGAXY = 0.d0
    %

i kopiujesz stworzony przez Ciebie ten kawałek do sprawka

na swoje potrzeby - wprowadzając swoje dane
wchodzisz do data_1D/decks/deck.com komentujesz inne funkcje i wklejasz tą Twoją stworzoną na koniec  przed to:

    EXECUTE
    NDIMEN = 1
    NRBREAKS = 0
    @

zapisujesz plik wchodzisz w terminal

    cd data_1D
    sh zad4.sh

tutaj te liczby po prawej powinny maleć 🙂
Kopiujesz to co Ci wypluł program do Twojego sprawozdania

KONIEC 🙂