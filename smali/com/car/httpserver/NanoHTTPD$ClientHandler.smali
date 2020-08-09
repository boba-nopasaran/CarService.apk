.class public Lcom/car/httpserver/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/car/httpserver/NanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/car/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lcom/car/httpserver/NanoHTTPD$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/car/httpserver/NanoHTTPD$ClientHandler;-><init>(Lcom/car/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->access$100(Lcom/car/httpserver/NanoHTTPD;)Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;->create()Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    move-result-object v2

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;-><init>(Lcom/car/httpserver/NanoHTTPD;Lcom/car/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    instance-of v1, v6, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, v6, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_1

    const-string v1, "CarSvc_NanoHTTPD"

    const-string v3, "Communication with the client broken"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v4}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    iget-object v1, v1, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lcom/car/httpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {v4}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    iget-object v1, v1, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lcom/car/httpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v4}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    iget-object v3, v3, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v3, p0}, Lcom/car/httpserver/NanoHTTPD$AsyncRunner;->closed(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V

    throw v1
.end method
