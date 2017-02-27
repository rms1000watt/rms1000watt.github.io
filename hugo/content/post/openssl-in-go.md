+++
date = "2017-02-22T7:11:58-08:00"
title = "OpenSSL in Go"

+++

**Food for thought: What if you wanted to use Go AND meet compliance requirements?**

Golang devs have specifically mentioned that some compliance requirements are not planned to be incorporated into the code base [as seen here](https://groups.google.com/forum/#!topic/golang-nuts/xnjCdW8HaOE).

So, an open question to the community: can anyone provide a working implementation of OpenSSL in Go for server/client that works out of the box? For instance, is there a project where I could...

```
go get -u -v your/openssl-go/project
go run openssl-go-project.go
```

... without a hitch?

Even using the exact steps defined at [SpaceMonkeyGo](https://godoc.org/github.com/spacemonkeygo/openssl) didn't yield positive results. 

Let me know what else is known!
