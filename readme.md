<hidden cmd="mkdocs build && cp -R site/* . && rm -rf site"/>
<hidden cmd="git add . && git commit -m "Added links" && git push https://rms1000watt@github.com/rms1000watt/rms1000watt.github.io.git master:master"/>
<hidden cmd="cd $GOPATH/src/github.com/rms1000watt/rms1000watt.github.io && mkdocs build && cp -R site/* . && rm -rf site && git add . && git commit -m "Added links" && git push https://rms1000watt@github.com/rms1000watt/rms1000watt.github.io.git master:master"/>

## rms1000watt

This is where I'm putting all my references that I want to share and not forget. 

[http://rms1000watt.github.io](http://rms1000watt.github.io)

### To Make Updates

#### Install

```
sudo pip install mkdocs
```

#### Clone

```
git clone https://github.com/rms1000watt/rms1000watt.github.io.git
```

#### Run

```
cd rms1000watt.github.io
# Make changes to code...
# View http://www.mkdocs.org/ for help
mkdocs serve
```

#### Build

```
mkdocs build
cp -R site/* . 
rm -rf site
# Site should be servable from this directory
```
