CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

.PHONY: all clean

all: triangle compute

triangle: main.cpp
	clang++ $(CFLAGS) -o triangle main.cpp $(LDFLAGS)

compute: compute_shader.cpp
	clang++ $(CFLAGS) -o compute compute_shader.cpp $(LDFLAGS)

clean:
	rm -f triangle compute

