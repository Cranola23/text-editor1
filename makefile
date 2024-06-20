#CFLAGS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#CFLAGS = -Werror

all: exm

exm: exm.o
	@echo "Rule to link"
	gcc -o exm exm.o 
exm.o: exm.c
	gcc -c exm.c -o exm.o 

clean:
	@echo "Removing extra files"
	rm -f exm.o exm
