PROGRAM = program

CPPFLAGS = -std=gnu++14 -Wall -Wextra -Wshadow -O2 -static -DSPRAWDZACZKA
CXX = g++

$(PROGRAM): main.cpp
	@echo "CC $<"
	@$(CXX) $(CPPFLAGS) -o $@ $<

.PHONY: test
test: $(PROGRAM)
	@tests/test.sh -e -p program $(wildcard tests/*.in)

.PHONY: clean
clean:
	rm -rf *.o $(PROGRAM)

