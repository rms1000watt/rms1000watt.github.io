+++
date = "2017-03-10T8:00:00-08:00"
title = "Golang Env from Scratch"
description = "Fresh Installation of Golang and Dev Environment in OS X. Hello World Included!"
tags = ["Golang", "VS Code", "OS X", "Installation"]
+++

This guide will help you install Golang and some useful developer tools in your fresh OS X instance. And there is a Hello World example at the end!

Installations include:

- Homebrew
- Golang
- Zsh (with Oh My Zsh)
- Terminal.app Options
- Visual Studio Code (with plugins)

<br>
## Installation

Find and open the Terminal app in OS X. Run these commands. 

(The code blocks below will have comments in them which start with a `#` but you should be able to copy and paste the whole code block into the Terminal.)

### Install Homebrew

Install [Homebrew](https://brew.sh/) and some useful packages with it.

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git (again?) so it has features like `gitk`
brew install git

# Install wget since it's a nice tool
brew install wget
```

### Install Golang

This will install Golang and some necessary libraries for your Visual Studio Code environment to work. While the [Golang installation steps](https://golang.org/doc/install) are complete, they're not obvious to newcomers. Here are explicit steps to actually have a working system.

```
# Fetch the latest zipped Golang distro from their servers
wget https://storage.googleapis.com/golang/go1.8.darwin-amd64.tar.gz 

# Unzip the distro to `/usr/local/go`
sudo tar -C /usr/local -xzf go1.8.darwin-amd64.tar.gz

# Remove the latest zipped Golang distro from your system (the unzipped items will remain)
rm go1.8.darwin-amd64.tar.gz

# 'Symbolic Link' the Golang binaries to a path your system can find them.
# This lets you do things like executing `go run` in the terminal.
ln -s /usr/local/go/bin/go /usr/local/bin/go
ln -s /usr/local/go/bin/godoc /usr/local/bin/godoc
ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt

# Make the default `GOPATH` directory which ends up at `/Users/ryan/go`
mkdir ~/go

# Install some golang libraries that will be needed later for Visual Studio Code
go get -v github.com/rogpeppe/godef
go get -v github.com/golang/lint/golint
go get -v github.com/tpng/gopkgs
go get -v github.com/lukehoban/go-outline
go get -v github.com/nsf/gocode
go get -v golang.org/x/tools/cmd/goimports
```

### Install & Configure Zsh

[Zsh](http://www.zsh.org/) is another shell program with cool features, plugins, and community.

```
# Install zsh
brew install zsh

# Add `/usr/local/bin/zsh` at bottom of /etc/shells
sudo echo '/usr/local/bin/zsh' >> /etc/shells 

# Change shell to zsh in your system
chsh -s /usr/local/bin/zsh

# Install Oh My Zsh which will configure zsh for your system
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Configure Terminal

My only beef with default Terminal is the default theme. Here is how to change it.

**Update Terminal to use a dark theme**

- Open a new Terminal and go to `Preferences`
- Select the `Profiles` tab
- Select the `Pro` theme on the left
- Set as default

<br>
**Fix background opacity and color**

- In the `Profiles` tab in the `Text` tab under the `Background` section, click the black square next to `Color & Effects`
- Adjust the opacity setting to 100%
- Click the next tab with the sliders
- In the dropdown that says `Gray Scale Slider` select `RGB Sliders` and set RGB to 30, 30, 30
- Close this screen

<br>
**Fix text boldness**

- In the `Profiles` tab in the `Text` tab under the `Text` section, depress the `Use bold fonts` setting
- Exit Terminal completely

<br>
### Download & Configure Visual Studio Code

Download [Visual Studio Code](https://code.visualstudio.com/) (VS Code), open it, and drag that sucker to your `Applications` directory. Open Visual Studio Code.

Press `cmd` + `shift` + `x` to open the Extensions side menu (the bottommost icon on the left). Do a search for `go luke`. The item at the top of the search results should be an extension named `Go` authored by `lukehoban`. Install that. Then you should be asked to restart VS Code; do it.

When VS Code restarts, press `cmd` + `,` to show the `settings.json` files. Paste this JSON into the 'User Settings' on the right of the screen.

```
// Place your settings in this file to overwrite the default settings
{
    "go.formatTool": "goimports",
    "workbench.iconTheme": null,
    "terminal.integrated.shell.osx": "/usr/local/bin/zsh",
    "workbench.welcome.enabled": false
}
```

You might have to restart VS Code after saving these changes. You can now view the Integrated Terminal with Zsh by pressing `ctrl` + `(backtick)`.

## Hello World

Open a new VS Code window. Open a new VS Code file. Paste this code into the window.

```
package main

import (
	"fmt"
)

func main() {
	fmt.Println("hello world!")
}

```

Save this code to your Desktop and name it `main.go`. Open your Integrated Terminal `ctrl` + `(backtick)`. In the Integrated Terminal, run these commands:

```
cd ~/Desktop
go run main.go
```

You should see the output from your code above!

## Summary

Using these steps, you should now have your OS X environment setup to begin developing in Golang. I'll add some screenshots soon. Please comment if certain steps are broken or just lame--I can fix them as per your suggestions. Have fun coding! 