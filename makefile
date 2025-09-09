CC = gcc
CFLAGS = -Wall
OBJS = main.o big3.o fact.o
TARGET = ABC.exe
all: $(TARGET)
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)
main.o: main.c
	$(CC) $(CFLAGS) -c main.c
big3.o: big3.c
	$(CC) $(CFLAGS) -c big3.c
fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c
clean:
	rm -f *.o $(TARGET)
