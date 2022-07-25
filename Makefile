all: src/example
.PHONY: all

src/example: src/circuit.c
	gcc -Wno-attributes -o $@ $<

clean:
	rm -f src/example
.PHONY: clean
