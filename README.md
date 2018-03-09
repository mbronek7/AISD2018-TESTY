## Jak dodać nowe testy?
Każdy test składa się z pliku wejściowego `test-name.in` oraz 
wyjściowego `test-name.out` zawierający poprawne odpowiedzi.

W celu uniknięcia kolizji nazw, proszę umieszczać swoje testy w
podkatalogu `imie_nazwisko`.

Opcjonalnie można wrzucić plik `test-name.info`, który krótko opisuje
ideę testu.

## Jak używać?

Przed właściwym odpaleniem `make test`, wykonaj dowiązanie symboliczne
folderu z testami aktualnej pracowni o nazwie `tests`.
```
ln -s A tests
```

Następnie użyj make, który zakłada, że nazwa pliku z kodem programu to
`main.cpp`  
_(można zmienic w pliku Makefile, zmienna PROGRAM)._

```
# Kompiluje main.cpp jako 'program'
$ make

# Odpala wszystkie testy w tests/
$ make test
```

## W jaki sposób check odpala testy?

Zgodnie z zaleceniami MBi, program zalicza test jeśli
`./program < test-name.in | diff -b -B - test-name.out`
nie wykrywa róznic i kończy działanie z kodem odpowiedzi równym `0`.
