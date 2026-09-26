CC = gcc
CFLAGS = -Iinclude -Wall -fPIC

all: lib/libmyutils.so bin/client_dynamic

# Create the shared dynamic library using -shared
lib/libmyutils.so: obj/mystrfunctions_dyn.o obj/myfilefunctions_dyn.o
	mkdir -p lib
	$(CC) -shared -o lib/libmyutils.so obj/mystrfunctions_dyn.o obj/myfilefunctions_dyn.o

# Compile source files into PIC object files
obj/mystrfunctions_dyn.o: src/mystrfunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/mystrfunctions.c -o obj/mystrfunctions_dyn.o

obj/myfilefunctions_dyn.o: src/myfilefunctions.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/myfilefunctions.c -o obj/myfilefunctions_dyn.o

obj/main_dyn.o: src/main.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c src/main.c -o obj/main_dyn.o

# Link the executable using the dynamic library
bin/client_dynamic: obj/main_dyn.o lib/libmyutils.so
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/client_dynamic obj/main_dyn.o -Llib -lmyutils -Wl,-rpath,'$$ORIGIN/../lib'

clean:
	rm -rf bin obj lib
