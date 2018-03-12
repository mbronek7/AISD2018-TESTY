PROGRAM = program

CPPFLAGS = -std=gnu++14 -Wall -Wextra -Wshadow -O2 -static
CXX = g++

$(PROGRAM): main.cpp
	@echo "CC $<"
	@$(CXX) $(CPPFLAGS) -o $@ $<

.PHONY: test
test: $(PROGRAM)
	@./check $(PROGRAM) $(shell find -L tests -iname '*.in')

.PHONY: clean
clean:
	rm -rf *.o $(PROGRAM)

