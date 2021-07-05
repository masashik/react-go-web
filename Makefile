#!/bin/bash

TERM=xterm

GOCMD=go
GOBUILD=GOOS=darwin $(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test

BINARY_NAME=webapp

all: clean buildUI build

clean: 
	@echo ""
	@echo "Deleting Previous package..."
	rm -fr static/

buildUI: 
	@echo ""
	@echo "Checking if node_modules exists"
	if [ -d "./ui/node_modules" ]; then \
		echo "node_modules exists";echo "Building Clientside code...";cd ui && npm run build && cd -; else \
		echo "node_modules does not exists";echo "Downloading NodeJS packages...";cd ui && npm install && npm run build && cd -; \
	fi
	  
build: 
	@echo ""
	@echo "Building Serverside code..."
	$(GOBUILD) -o $(BINARY_NAME) -v
