output: main.o batch.o fileHandler.o interactive.o singleCommandHandler.o vector.o basic.o special.o executer.o environment.o history.o logger.o stringparsing.o
		gcc main.o fileHandler.o batch.o interactive.o singleCommandHandler.o vector.o basic.o special.o executer.o environment.o history.o logger.o stringparsing.o -o output

main.o: main.c
		gcc -c main.c

fileHandler.o: fileHandler.c
		gcc -c fileHandler.c

interactive.o: interactive.c
		gcc -c interactive.c
batch.o: batch.c
		gcc -c batch.c

singleCommandHandler.o: singleCommandHandler.c
		gcc -c singleCommandHandler.c

vector.o: vector.c
		gcc -c vector.c

basic.o: basic.c
		gcc -c basic.c

special.o: special.c
		gcc -c special.c

executer.o: executer.c
		gcc -c executer.c

environment.o: environment.c
		gcc -c environment.c

history.o: history.c
		gcc -c history.c

logger.o: logger.c
		gcc -c logger.c

stringparsing.o: stringparsing.c
		gcc -c stringparsing.c

clean:
		rm *.o output
