CXX = g++
CXXFLAGS = -std=c++11 -Wall

OBJS = main.o Product.o Inventory.o

all: inventory

inventory: $(OBJS)
	$(CXX) $(CXXFLAGS) -o inventory $(OBJS)

main.o: main.cpp Product.h Inventory.h
Product.o: Product.cpp Product.h
Inventory.o: Inventory.cpp Inventory.h Product.h HashTable.h

clean:
	rm -f *.o inventory