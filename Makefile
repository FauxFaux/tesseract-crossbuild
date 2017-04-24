all: tess

tess: Dockerfile
	docker build --tag=tesseract-crossbuild:latest .
