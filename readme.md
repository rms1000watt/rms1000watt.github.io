## rms1000watt

This is where I'm putting all my references that I want to share and not forget. 

[http://rms1000watt.github.io](http://rms1000watt.github.io)

### To Make Updates

#### Install

```
brew install hugo
```

#### Clone

```
git clone https://github.com/rms1000watt/rms1000watt.github.io.git
```

#### Run

```
hugo server
```

#### Build

```
hugo
```

<hidden cmd=`
echo "/public/" >> .gitignore
echo "/themes/" >> .gitignore
git add . 
git commit -m "Moving to Hugo (2)" 
git push https://rms1000watt@github.com/rms1000watt/rms1000watt.github.io.git master:master
`/>