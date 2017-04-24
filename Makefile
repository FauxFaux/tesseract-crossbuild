all: bins.tar

tess: Dockerfile
	docker build --tag=tesseract-crossbuild:latest .

bins.tar: tess
	docker run tesseract-crossbuild:latest sh -c 'tar c -C /root/.cache/w32/bin . -C /usr/lib/gcc/i686-w64-mingw32/5.3-win32 libgcc_s_sjlj-1.dll libgomp-1.dll libstdc++-6.dll -C /usr/i686-w64-mingw32/lib libwinpthread-1.dll' > bins.tar
