
build:
	cabal v2-build

render:
	rm -f image.ppm
	cabal v2-build
	time ./ray-tracers >> image.ppm
	open image.ppm

format:
	stylish-haskell -i src/*.hs *.hs
