+++
date = "2017-02-23T7:11:58-08:00"
title = "What is gRPC?"

+++

**TLDR: After you get past the learning curve of the topic (which is the bulk of this post), gRPC is an amazing framework!**

[gRPC](http://grpc.io) is Google's "...high performance, open-source universal RPC framework." Which doesn't really mean anything to the newcomer. To help you understand what this actually means, let's look at what you're already used to REST API and compare it gRPC.

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

[HTTP2](https://en.wikipedia.org/wiki/HTTP/2) is the next generation, WWW protocol following HTTP1.1. The big takeaway in relation to gRPC is the full duplex communication across a single connection, which is one reason why it's coined "high performance." Put another way, with 1 connection between server and client, data can be transferred in both directions concurrently.

Another cool side effect of HTTP2 is it requires a TLS connection. This doesn't mean your connection is Always secure, it means IFF you provide a secure connection then you can use HTTP2. Please checkout the Wikipedia article for more information regarding HTTP2.

## Remote Procedure Call

[Remote Procedure Call](https://en.wikipedia.org/wiki/Remote_procedure_call) or RPC is when "...a computer program causes a procedure (subroutine) to execute in another address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction."

WOW! Groundbreaking!

No, not really. You're used to doing this with your REST API server/clients. You're executing code on another computer without explicitly coding the commands on the remote computer. Put another way, you (the client) is telling a remote computer (the server) to do something; you don't care how it gets done just as long as you get a proper response back. Don't forget, you're using Layer 7 HTTP to make the communication in both cases (REST & RPC).

But the difference between REST and RPC is essentially how you're exposing your server's endpoints. For example, a REST server might only provide strict CRUD operations against an object, while an RPC server could provide more general computation functionalities such as `genHash()`.

## Protobuf

[Protocol Buffers](https://developers.google.com/protocol-buffers/) or Protobufs are one of Google's serialization structures. If you're comfortable with JSON or XML, then consider Protobufs in the same class as these. However, the magic power of Protobufs is the `.pb` file. This file defines the structure (or dare I say schema) of your data. Then a Protobuf Compilier is used to actually generate the data structure in the language of your choosing. Therefore, you can define a data structure once and use it across all your languages.

Example Protobuf definition:

```
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;
}
```

## The Culmination of gRPC

gRPC takes this one step further by adding `Services` to the Protobuf definition file.

```
service HelloService {
  rpc SayHello (HelloRequest) returns (HelloResponse);
}

message HelloRequest {
  string greeting = 1;
}

message HelloResponse {
  string reply = 1;
}
```

By using a gRPC plugin for the Protobuf Compilier, the compilier will also generate server/client code for any language of your chosing. 

## Summary

If you're used to REST APIs where HTTP1.1, REST, and JSON are used, consider gRPC as the next generation

- HTTP1.1 => HTTP2
- REST => RPC
- JSON => Protobuf

<br>
But, I do hate to talk your ear off. You'll learn a lot better by just playing with the actual tools. I can say I've used gRPC in the proper setting and it has lived up to the hype. So, go follow the [gRPC tutorials](http://www.grpc.io/docs/quickstart/) for your language of choice and get to playing!
