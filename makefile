CFLAGS = -Wall

# create target exe
all: myfunc.o main.o
	g++ ${CFLAGS} -o myexe myfunc.o main.o
	
# rebuild if either of the files below change
myfunc.o: myfunc.cpp myfunc.h
	g++ ${CFLAGS} -c myfunc.cpp

# another rebuilder
main.o: main.cpp myfunc.h
	g++ ${CFLAGS} -c main.cpp
	
# make clean script
clean:
	rm -f *.o myexe