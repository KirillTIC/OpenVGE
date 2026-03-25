CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
OpenVGETest: src/main.cpp
	g++ $(CFLAGS) -o OpenVGETest src/main.cpp $(LDFLAGS)
.PHONY: test clean

test: OpenVGETest
	./OpenVGETest

clean:
	rm -f OpenVGETest
