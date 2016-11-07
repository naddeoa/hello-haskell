#!/usr/bin/make -f

SOURCE     := $(shell find . -name "*.hs" -type f)
BUILD_DIR  := build
BIN        := $(BUILD_DIR)/hello

.PHONY: clean run default

default: run

all: $(BUILD_DIR) $(SOURCE)
	ghc -o $(BIN) -outputdir $(BUILD_DIR) $(SOURCE)

clean:
	rm -r $(BUILD_DIR)

run: all
	$(BIN)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)
