.PHONY: build build-debug run clean default install

default: run

# Run outside container
build-disco-image:
	docker build -t waybar_build .

# Run outside container
build-disco:
	docker run -t --rm -v $(shell pwd):/workdir -w "/workdir" waybar_build sh -c "meson build; ninja -C build"
	sudo chown $(shell id -u):$(shell id -g) . -Rf

bin-install:
	ln -s $(PWD)/build/waybar ~/bin/

# Run in-container
build:
	meson build
	ninja -C build

# Run in-container
build-debug:
	meson build --buildtype=debug
	ninja -C build

install: build
	ninja -C build install

run: build
	./build/waybar

clean:
	rm -rf build
