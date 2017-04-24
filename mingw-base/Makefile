all: docker

docker: Dockerfile mingw-is-c-compiler_1.0_all.deb
	docker build --tag=mingw-base:latest .

mingw-is-c-compiler_1.0_all.deb: mingw-is-c-compiler.control
	equivs-build $^
