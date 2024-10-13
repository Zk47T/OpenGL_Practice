# Variables
TARGET = main
CC = g++
CFLAGS = -pthread
LIBS = -lglfw -lGLU -lGL -lGLEW -lXrandr -lXxf86vm -lXi -lXinerama -lX11 -lrt -ldl

# Default target to build the executable
all: $(TARGET)

$(TARGET): main.cpp
	$(CC) $(CFLAGS) -o $(TARGET) main.cpp $(LIBS)

# Clean target to remove the executable
clean:
	rm -f $(TARGET)
