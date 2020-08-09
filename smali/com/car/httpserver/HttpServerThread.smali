.class public Lcom/car/httpserver/HttpServerThread;
.super Ljava/lang/Thread;
.source "HttpServerThread.java"


# static fields
.field public static final HTPP_FILES_SERVICE_PORT:I = 0x20bf

.field private static final TAG:Ljava/lang/String; = "CarSvc_HttpServerThread"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mServerThreadRun:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/HttpServerThread;->mServerThreadRun:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0, p1}, Lcom/car/httpserver/HttpServerThread;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/car/httpserver/HttpServerThread;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x20bf

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerThreadRun:Z

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerThreadRun:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/car/httpserver/HttpRequestThread;

    const-string v3, "HttpRequestThread"

    iget-object v4, p0, Lcom/car/httpserver/HttpServerThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/car/httpserver/HttpRequestThread;-><init>(Ljava/net/Socket;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/car/httpserver/HttpRequestThread;->start()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "CarSvc_HttpServerThread"

    const-string v4, "SocketTimeoutException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_1
    return-void

    :catch_2
    move-exception v0

    :try_start_5
    const-string v3, "CarSvc_HttpServerThread"

    const-string v4, "InterruptedIOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_6
    iget-object v4, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_2
    throw v3

    :catch_3
    move-exception v0

    :try_start_7
    const-string v3, "CarSvc_HttpServerThread"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_8
    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public stopServerThread()V
    .locals 2

    iget-object v1, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/HttpServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/car/httpserver/HttpServerThread;->mServerThreadRun:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
