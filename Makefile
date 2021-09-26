CC=g++
CFLAG= -Wall -std=c++11
SRC_FILE=src
BIN=bin

PROG=logWordFinder

HEADER_FILE=src/*.h
OBJECT= main.o logfinder.o

all: $(PROG)

$(PROG): create_dir $(OBJECT)
	$(CC) $(CFLAG) -o $(BIN)/$(PROG) $(BIN)/*.o

main.o: $(SRC_FILE)/main.cpp $(HEADER_FILE)
	$(CC) $(CFLAG) -c $(SRC_FILE)/main.cpp -o $(BIN)/main.o

logfinder.o: $(SRC_FILE)/logfinder.cpp $(HEADER_FILE)
	$(CC) $(CFLAG) -c $(SRC_FILE)/logfinder.cpp -o $(BIN)/logfinder.o

create_dir: 
	@echo "Creating Binary Directory"
	@mkdir -p bin

clean:
	@echo "Cleaning up"
	@rm -rf $(BIN)

