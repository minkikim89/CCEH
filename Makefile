CXX := g++
CFLAGS := -std=c++17 -I./ -lrt -lpthread -O3 -fPIC 

all: ALL_CCEH

ALL_CCEH: CCEH_MSB

CCEH_MSB: src/CCEH.h src/CCEH_MSB.cpp
	$(CXX) $(CFLAGS) -c -o src/CCEH_MSB.o src/CCEH_MSB.cpp -DINPLACE
	$(CXX) $(CFLAGS) -c -o src/CCEH_MSB_CoW.o src/CCEH_MSB.cpp
clean:
	rm -rf src/*.o
