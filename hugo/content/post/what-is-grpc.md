+++
date = "2017-02-24T7:11:58-08:00"
title = "What is gRPC?"

+++

*INCOMPLETE GUIDE*

**TLDR: After you get past the learning curve of the topic (which is the bulk of this post), gRPC is an amazing framework!**

[gRPC](http://grpc.io) is Google's "...high performance, open-source universal RPC framework." Which doesn't really mean anything to the newcomer. To help you understand what this actually means, let's look at what you're used to already (REST API) and gRPC.

What you're used to

```
REST API = HTTP1.1 + REST + JSON
```

gRPC

```
gRPC = Google + RPC Framework
gRPC = Google + (HTTP2 + Remote Procedure Call + Protobuf)
```

Going further to explain the differences between the two...

## HTTP2

HTTP2 is the generation following HTTP1.1. The big takeaway in relation to gRPC is the full duplex communication across a single connection, which is one reason why it's coined "high performance." 

Another cool side effect of HTTP2 is it requires a TLS connection. This doesn't mean your connection is Always secure, it means IFF you provide a secure connection then you can use HTTP2.

## Remote Procedure Call

[Remote Procedure Call](https://en.wikipedia.org/wiki/Remote_procedure_call) or RPC is when "...a computer program causes a procedure (subroutine) to execute in another address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction."

WOW! Groundbreaking!

No, not really. You're used to doing this with your REST API server/clients. You're executing code on another computer without explicitly coding the commands on the remote computer. Put another way, you (the client) is telling a remote computer (the server) to do something; you don't care how it gets done just as long as you get a proper response back. Don't forget, you're using Layer 7 HTTP to make the communication in both cases (REST & RPC).

But the difference between REST and RPC is essentially how you're exposing your server's endpoints. For example...

## Protobuf

## The Power of gRPC

The power of gRPC is in the usage. This is made possible by Protobuf. Not only is gRPC generating structs with serialization and deserialization methods resulting from the Protobuf contract, but gRPC also uses the Protobuf contract to generate server/client code.

## Summary

After you understand what gRPC actually is, then you  is a fantastic framework. Use it! 

(If you've found any errors in my explanations, please contact me with corrections)
