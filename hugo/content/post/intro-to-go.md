+++
date = "2017-02-22T7:11:58-08:00"
title = "Intro to Go"
draft = true
+++

*INCOMPLETE GUIDE*

Here is an introduction to Go from someone who recently got over the learning curve. 

## Installation

Using Homebrew

```sh
brew install go
```

Using Latest

```sh

```

## Setting up your environment

`GOPATH`?!

## Using your environment

Get VS Code

## Testing

```sh
touch main_test.go
# edit main_test.go
go test
```

## Building

```sh
GOOS=darwin GOARCH=amd64 go build
```

## Deploying

See my guide using Golang + Docker. Otherwise, just slap `upstart`/`systemd` infront of your binary and let it run forever.

#### TODO

- Complete this writeup
