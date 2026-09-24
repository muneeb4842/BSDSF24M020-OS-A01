CC = gcc
CFLAGS = -Iinclude -Wall

all: bin/client

bin/client: obj/main.o obj/mystrfunctions.o obj/myfilefunctions.o
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/client obj/main.o obj/mystrfunctions.o obj/myfilefunctions.o

obj/main.o: src/main.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/main.c -o obj/main.o

obj/mystrfunctions.o: src/mystrfunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/mystrfunctions.c -o obj/mystrfunctions.o

obj/myfilefunctions.o: src/myfilefunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/myfilefunctions.c -o obj/myfilefunctions.o

clean:
	rm -rf bin obj
