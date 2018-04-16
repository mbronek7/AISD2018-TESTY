SOURCE = $(wildcard main.*)
PROGRAM = program
MEMORY_LIMIT = unlimited

CXXFLAGS = -Wall -Wextra -Wshadow -O2 -static

ifeq ("$(suffix $(SOURCE))",".cpp")
	CXXFLAGS += -std=gnu++14
	CXX = g++
else ifeq ("$(suffix $(SOURCE))",".c")
	CXXFLAGS += -std=gnu99 -lm
	CXX = gcc
endif

ifneq ("$(wildcard tests/memory_limit)","")
	MEMORY_LIMIT = $(shell cat tests/memory_limit)
endif

$(PROGRAM): $(SOURCE)
	$(CXX) $(CXXFLAGS) -o $@ $<

.PHONY: test
test: $(PROGRAM)
	@./check -m $(MEMORY_LIMIT) $(PROGRAM) $(shell find -L tests -iname '*.in')

.PHONY: clean
clean:
	rm -rf *.o $(PROGRAM)

