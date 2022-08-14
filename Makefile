-include environ.inc
.PHONY: deps dev build install image release test clean

GOCMD=go

all: build

deps:
	@$(GOCMD) install git.mills.io/prologic/zs@latest
	@$(GOCMD) install git.mills.io/prologic/static@latest

dev : DEBUG=1
dev : build
	@zs watch

build:
	@zs build

ifeq ($(PUBLISH), 1)
image:
	@docker build --no-cache -t r.mills.io/prologic/yarn.social .
	@docker push r.mills.io/prologic/yarn.social
else
image:
	@docker build -t r.mills.io/prologic/yarn.social .
endif

clean:
	@git clean -f -d -X
