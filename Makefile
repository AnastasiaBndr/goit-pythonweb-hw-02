IMAGE_NAME = goit-pythonweb-hw-02
VERSION = 1

ENTRYPOINT = main.py

venv:
	python -m venv venv

venv-activate:
	venv\Scripts\activate

build:
	docker build -t $(IMAGE_NAME):$(VERSION) .

run:
	docker run -it --rm -v .:/$(IMAGE_NAME)  $(IMAGE_NAME):$(VERSION)

compose:
	docker compose up
