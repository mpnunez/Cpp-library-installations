CPP=g++ -std=c++17 -Wfatal-errors -Wextra -Wall -Wfloat-equal -Winit-self -Wuninitialized
INSTALL_DIR=../mongo-cxx-driver-r3.10.1/build/install

.PHONY: all

all: mongodb-eg.x

mongodb-eg.x: main.cpp
	$(CPP) -O3 -o mongodb-eg.x main.cpp -I$(INSTALL_DIR)/include/bsoncxx/v_noabi -I$(INSTALL_DIR)/include/mongocxx/v_noabi -I$(INSTALL_DIR)/include/bsoncxx/v_noabi/bsoncxx/third_party/mnmlstc -L$(INSTALL_DIR)/lib -lbsoncxx -lmongocxx

# Clean outputs.
clean:
	rm *.o *.x
