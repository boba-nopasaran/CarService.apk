.class public final Lcom/car/voice/remote/NetServImpl;
.super Ljava/lang/Object;
.source "NetServImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/remote/NetServImpl$Client;,
        Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CarSvc_NetServImpl"

.field static final VOICE_TCP_PORT:I = 0x1fc0


# instance fields
.field mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

.field mRemoteMicInfo:Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mServerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.remote.voice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/voice/remote/NetServImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/voice/remote/NetServImpl;->mRemoteMicInfo:Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init ServerSocket Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeClient(Lcom/car/voice/remote/NetServImpl$Client;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_NetServImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ask last client exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v0}, Lcom/car/voice/remote/NetServImpl$Client;->askExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method createServerSocket()Z
    .locals 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x1fc0

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket bind error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    monitor-exit p0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket bind error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getStateOfClient()Z
    .locals 1

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-static {v0}, Lcom/car/voice/remote/NetServImpl$Client;->access$000(Lcom/car/voice/remote/NetServImpl$Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendReq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v0, p1, p2}, Lcom/car/voice/remote/NetServImpl$Client;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendSuggestionResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/NetServImpl$Client;->sendSuggestionResult(Ljava/util/List;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendTips(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/NetServImpl$Client;->sendTips(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mServerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/voice/remote/NetServImpl$1;

    invoke-direct {v0, p0}, Lcom/car/voice/remote/NetServImpl$1;-><init>(Lcom/car/voice/remote/NetServImpl;)V

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mServerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/voice/remote/NetServImpl;->closeClient(Lcom/car/voice/remote/NetServImpl$Client;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method threadLoop()V
    .locals 6

    :goto_0
    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    if-eqz v3, :cond_0

    const-string v3, "CarSvc_NetServImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ask last client exit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v3}, Lcom/car/voice/remote/NetServImpl$Client;->askExit()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    :cond_0
    new-instance v2, Lcom/car/voice/remote/NetServImpl$Client;

    invoke-direct {v2, p0, v1}, Lcom/car/voice/remote/NetServImpl$Client;-><init>(Lcom/car/voice/remote/NetServImpl;Ljava/net/Socket;)V

    invoke-virtual {v2}, Lcom/car/voice/remote/NetServImpl$Client;->start()V

    iput-object v2, p0, Lcom/car/voice/remote/NetServImpl;->mLastClient:Lcom/car/voice/remote/NetServImpl$Client;

    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mRemoteMicInfo:Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;->connectionStatus(Z)V

    const-string v3, "START"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarSvc_NetServImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threadLoop new Client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v3, "CarSvc_NetServImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket accept error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
