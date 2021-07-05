# react-go-web

[![CI with Make](https://github.com/masashik/react-go-web/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/masashik/react-go-web/actions/workflows/main.yml)

This is a full stack front-end and back-end web app.

# Setup

- Pick up your OS architecture and update Makefile.
	- GOOS=darwin for macOS
	- GOOS=linux for Linux
	- GOOS=windows for Windows
- Then, run 'make all' command in your terminal.
- An executable binary(webapp) is created at the same directory of the Makefile.

# Usage

- Execute the binary with necessary environment variables.
```
OAUTH_CLIENT_ID=xxxxxxxxxx OAUTH_CLIENT_SECRET=xxxxxxxxxx PORT=<PORT_NUM> ./webapp
```
- Open the browser and access to the running web app 
```
http://localhost:<PORT_NUM>
