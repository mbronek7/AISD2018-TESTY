
Flags = -std=gnu++14 -Wall -Wextra -Wshadow -O2 -static
CPP = g++


main : Makefile   main.o 
	$(CPP) $(Flags) -o main   main.o 

main.o : Makefile   main.cpp   
	$(CPP) -c $(Flags) main.cpp -o  main.o

clean :
	rm -f main main.o 
