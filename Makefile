default: install install-dev

all: hooks install fmt lint test check


h help:
	@grep '^[a-z]' Makefile


.PHONY: hooks
hooks:
	cd .git/hooks && ln -s -f ../../hooks/pre-push pre-push

install:
	cargo update


fmt:
	cargo fmt

lint:
	cargo clippy

test:
	cargo test


run:
	cargo run


check:
	cargo check

build:
	cargo build

build-prod:
	cargo build --release

clean:
	rm -rf target
