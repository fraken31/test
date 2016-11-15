.SUFFIXES : .cpp .o 

OBJECTS = hello.o 
SRCS = hello.cpp 

CC = g++ 
CFLAGS = -g -c 

TARGET = hello.exe

$(TARGET) : $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

.cpp.o :
	$(CC) $(INC) $(CFLAGS) $<

clean : 
	rm -rf $(OBJECTS) $(TARGET) core 

hello.o : hello.cpp
