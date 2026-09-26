CC = gcc
CFLAGS = -Iinclude -Wall

all: lib/libmyutils.a bin/client_static

# Create the static library using the 'ar' archive utility
lib/libmyutils.a: obj/mystrfunctions.o obj/myfilefunctions.o
	mkdir -p lib
	ar rcs lib/libmyutils.a obj/mystrfunctions.o obj/myfilefunctions.o

# Compile source files into object files
obj/mystrfunctions.o: src/mystrfunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/mystrfunctions.c -o obj/mystrfunctions.o

obj/myfilefunctions.o: src/myfilefunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/myfilefunctions.c -o obj/myfilefunctions.o

obj/main_static.o: src/main.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/main.c -o obj/main_static.o

# Link the executable using the static library
bin/client_static: obj/main_static.o lib/libmyutils.a
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/client_static obj/main_static.o -Llib -lmyutils

clean:
	rm -rf bin obj lib
