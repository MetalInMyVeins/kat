ASM := aarch64-linux-gnu-as
LD := aarch64-linux-gnu-ld
QEMU := qemu-aarch64

build/arm64/kat: build/arm64/kat.o
	$(LD) $^ -o $@

build/arm64/kat.o: arm64/kat.S
	mkdir -p build/arm64/
	$(ASM) $^ -o $@

run: build/arm64/kat
	$(QEMU) -L /usr/aarch64-linux-gnu/ build/arm64/kat

.PHONY: clean
clean:
	rm -rf build
