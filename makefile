build : main.c
	gcc main.c -o main.exe
	gcc -E main.c -o main.i
	gcc -S main.c -o main.s
	gcc -C main.c -o main.o
	