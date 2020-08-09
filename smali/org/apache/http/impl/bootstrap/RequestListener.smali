.class Lorg/apache/http/impl/bootstrap/RequestListener;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final connectionFactory:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory",
            "<+",
            "Lorg/apache/http/HttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lorg/apache/http/ExceptionLogger;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final httpService:Lorg/apache/http/protocol/HttpService;

.field private final serversocket:Ljava/net/ServerSocket;

.field private final socketConfig:Lorg/apache/http/config/SocketConfig;

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/http/config/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/SocketConfig;",
            "Ljava/net/ServerSocket;",
            "Lorg/apache/http/protocol/HttpService;",
            "Lorg/apache/http/HttpConnectionFactory",
            "<+",
            "Lorg/apache/http/HttpServerConnection;",
            ">;",
            "Lorg/apache/http/ExceptionLogger;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    iput-object p2, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    iput-object p4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    iput-object p3, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->httpService:Lorg/apache/http/protocol/HttpService;

    iput-object p5, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    iput-object p6, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/bootstrap/RequestListener;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getSndBufSize()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getSndBufSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v4}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_2
    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    invoke-interface {v4, v2}, Lorg/apache/http/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpServerConnection;

    new-instance v3, Lorg/apache/http/impl/bootstrap/Worker;

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v5, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/impl/bootstrap/Worker;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/ExceptionLogger;)V

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v4, v1}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public terminate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    return-void
.end method
