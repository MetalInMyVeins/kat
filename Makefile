build/arm64/kat: build/arm64/kat.o
	/bin/aarch64-linux-gnu-ld $^ -o $@

build/arm64/kat.o: arm64/kat.S
	mkdir -p build/arm64/
	/bin/aarch64-linux-gnu-as $^ -o $@

.PHONY: clean
clean:
	rm -rf build
