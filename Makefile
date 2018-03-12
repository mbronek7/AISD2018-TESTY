PROGRAM = program
MEMORY_LIMIT = unlimited

CPPFLAGS = -std=gnu++14 -Wall -Wextra -Wshadow -O2 -static
CXX = g++

ifneq ("$(wildcard tests/memory_limit)","")
	MEMORY_LIMIT = $(shell cat tests/memory_limit)
endif

$(PROGRAM): main.cpp
	@echo "CC $<"
	@$(CXX) $(CPPFLAGS) -o $@ $<

.PHONY: test
test: $(PROGRAM)
	@./check -m $(MEMORY_LIMIT) $(PROGRAM) $(shell find -L tests -iname '*.in')

.PHONY: clean
clean:
	rm -rf *.o $(PROGRAM)

