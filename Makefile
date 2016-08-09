IMAGE_ID=$(shell docker images | awk 'NR>1' | grep melon-ubuntu | awk '{print $$3}')

build:
	-docker build -t melon-ubuntu .

images:
	-docker images

run:
	-docker run -it melon-ubuntu bash

inspect:
	-docker inspect ${IMAGE_ID} # | jq ".[0]"

rmi:
	-docker rmi -f ${IMAGE_ID}
