BUILD_ROOT=_build/tdlib
BUILD_DIRECTORY=$(BUILD_ROOT)/rel
BUILD_ARTIFACT=$(BUILD_DIRECTORY)/bin/tdlib_json_cli
PRIV_DIR=priv
BIN_TARGET=$(PRIV_DIR)/tdlib-json-cli

JOBS=2
VERBOSE=0

TDLIB_SRC=priv/tdlib_v1.1.1.tar.gz
TDLIBJSONCLI_SRC=priv/tdlib-json-cli_v1.1.1+1.tar.gz

all:
	if [ ! -f $(BIN_TARGET) ]; then \
		make extract build import; \
	fi

clean:
	rm -f $(BIN_TARGET)
	rm -r $(BUILD_ROOT)

extract:
	mkdir -p $(BUILD_ROOT);  \
	tar xvf $(TDLIBJSONCLI_SRC) --directory $(BUILD_ROOT) --strip-components 1; \
	tar xvf $(TDLIB_SRC) --directory $(BUILD_ROOT)/td --strip-components 1; \
	patch $(BUILD_ROOT)/td/CMakeLists.txt $(PRIV_DIR)/disable-lto.patch

build:
	mkdir -p $(BUILD_DIRECTORY)

ifeq ($(shell uname),Darwin)
	cd $(BUILD_DIRECTORY); \
	cmake -DCMAKE_BUILD_TYPE=Release -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl/ ..; \
	make -j$(JOBS) VERBOSE=$(VERBOSE)
else
	cd $(BUILD_DIRECTORY); \
	cmake -DCMAKE_BUILD_TYPE=Release ..; \
	make -j$(JOBS) VERBOSE=$(VERBOSE)
endif

import:
	cp $(BUILD_ARTIFACT) $(BIN_TARGET)
	cp $(BUILD_ROOT)/types.json $(PRIV_DIR)/types.json
