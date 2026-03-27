CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread \
          -lX11 -lXxf86vm -lXrandr -lXi \
          -lwayland-client -lwayland-cursor -lwayland-egl -lxkbcommon
OpenVGETest: src/main.cpp
	g++ $(CFLAGS) -o OpenVGETest src/main.cpp $(LDFLAGS)
.PHONY: test clean

test: OpenVGETest
	./OpenVGETest

clean:
	rm -f OpenVGETest
