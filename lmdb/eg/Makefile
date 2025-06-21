CPP=g++ -std=c++17 -Wfatal-errors -Wextra -Wall -Wfloat-equal -Winit-self -Wuninitialized
INSTALL_DIR=..
LMDBC_INSTALL=$(INSTALL_DIR)/lmdb/libraries/liblmdb
LMDBCPP_INSTALL=$(INSTALL_DIR)/lmdbxx

.PHONY: all

all: lmdb-eg.x

lmdb-eg.x: lmdb-eg.x
	g++ -o lmdb-eg.x $(LMDBCPP_INSTALL)/example.cc -std=c++17 -I$(LMDBCPP_INSTALL) -I$(LMDBC_INSTALL) -L$(LMDBC_INSTALL) -llmdb

# Clean outputs.
clean:
	rm *.o *.x
