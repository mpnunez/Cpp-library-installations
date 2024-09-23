INSTALL_DIR=../zlib-installation

.PHONY: all

all: zpipe.x


# libcurl program
zpipe.x: zpipe.c
	gcc -O3 -o zpipe.x zpipe.c -I$INSTALL_DIR/include -L$INSTALL_DIR/lib -lz

# Clean outputs.
clean:
	rm *.o *.x
