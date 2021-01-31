default: install

all: hooks install fix lint test


h help:
	@grep '^[a-z]' Makefile


.PHONY: hooks
hooks:
	cd .git/hooks && ln -s -f ../../hooks/pre-push pre-push

install:
	cargo check

update:
	cargo update


fmt-fix:
	cargo fmt

lint:
	cargo clippy

fix: fmt-fix lint

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
