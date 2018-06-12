CC = g++
CFLAGS = -std=c++11
OBJECTS = main.o bmp.o camera.o obj.o scene.o

all: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@
	
main.o: main.cpp include/tracer.h
	$(CC) $(CFLAGS) -c main.cpp

%.o: src/%.cpp include/%.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm *.o