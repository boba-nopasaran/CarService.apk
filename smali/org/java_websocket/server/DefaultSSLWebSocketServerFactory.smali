.class public Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;
.super Ljava/lang/Object;
.source "DefaultSSLWebSocketServerFactory.java"

# interfaces
.implements Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;


# instance fields
.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    iput-object p2, p0, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/WebSocketAdapter;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lorg/java_websocket/WebSocketImpl;"
        }
    .end annotation

    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;)V

    return-object v0
.end method

.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;
    .locals 1

    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    new-instance v1, Lorg/java_websocket/SSLSocketChannel2;

    iget-object v2, p0, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p1, v0, v2, p2}, Lorg/java_websocket/SSLSocketChannel2;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V

    return-object v1
.end method
