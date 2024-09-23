CPP=g++ -std=c++17 -Wfatal-errors -Wextra -Wall -Wfloat-equal -Winit-self -Wuninitialized
INSTALL_DIR=/home/mpnunez/coding/facile-tutorials/libs/
LIBCURL_INSTALL=$INSTALL_DIR/curl-8.8.0-installation
CURLPP_INSTALL=$INSTALL_DIR/curlpp-installation

.PHONY: all

all: libcurl-eg.x curlpp-eg.x


# libcurl program
libcurl-eg.x: libcurl-eg.c
	gcc -O3 -o libcurl-eg.x libcurl-eg.c -I$LIBCURL_INSTALL/include -L$LIBCURL_INSTALL/lib -lcurl

# program
curlpp-eg.x: curlpp-eg.cpp
	$(CPP) -O3 -o curlpp-eg.x curlpp-eg.cpp -I$LIBCURL_INSTALL/include -L$LIBCURL_INSTALL/lib -lcurl -I$CURLPP_INSTALL/include -L$LIBCURL_INSTALL/lib -lcurlpp

# Clean outputs.
clean:
	rm *.o *.x
