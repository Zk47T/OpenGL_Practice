# Variables
TARGET = test
CC = g++
CFLAGS = -pthread
LIBS = -lglfw -lGLU -lGL -lXrandr -lXxf86vm -lXi -lXinerama -lX11 -lrt -ldl

# Default target to build the executable
all: $(TARGET)

$(TARGET): test.c
	$(CC) $(CFLAGS) -o $(TARGET) test.c $(LIBS)

# Clean target to remove the executable
clean:
	rm -f $(TARGET)
