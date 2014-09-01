all: sha2.o sha2lib.o
	$(CC) -shared -o sha2.so sha2.o sha2lib.o

.PHONY: all
