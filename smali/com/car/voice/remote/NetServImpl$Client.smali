.class final Lcom/car/voice/remote/NetServImpl$Client;
.super Ljava/lang/Object;
.source "NetServImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/remote/NetServImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Client"
.end annotation


# instance fields
.field private mClosed:Z

.field private mInStream:Ljava/io/BufferedInputStream;

.field private final mInTempBuf:[B

.field private mOutStream:Ljava/io/OutputStream;

.field private mOutputQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/net/Socket;

.field private mStopped:Z

.field private final mStringBuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/car/voice/remote/NetServImpl;


# direct methods
.method public constructor <init>(Lcom/car/voice/remote/NetServImpl;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/car/voice/remote/NetServImpl$Client;->this$0:Lcom/car/voice/remote/NetServImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mInTempBuf:[B

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutStream:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mInStream:Ljava/io/BufferedInputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/remote/NetServImpl$Client;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mClosed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/car/voice/remote/NetServImpl$Client;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    return v0
.end method


# virtual methods
.method public askExit()V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mClosed:Z

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    const-string v3, "Exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method end()V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mClosed:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mClosed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mInStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->this$0:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v1, p0}, Lcom/car/voice/remote/NetServImpl;->closeClient(Lcom/car/voice/remote/NetServImpl$Client;)V

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->this$0:Lcom/car/voice/remote/NetServImpl;

    iget-object v1, v1, Lcom/car/voice/remote/NetServImpl;->mRemoteMicInfo:Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;->connectionStatus(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "CarSvc_NetServImpl"

    const-string v3, "Exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method inputRun()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/car/voice/remote/NetServImpl$Client;->mInStream:Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/car/voice/remote/NetServImpl$Client;->mInTempBuf:[B

    invoke-static {v4, v5}, Lcom/car/voice/remote/NetRequest;->parseRequest(Ljava/io/InputStream;[B)Lcom/car/voice/remote/NetRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-boolean v4, Lcom/car/voice/remote/NetServImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CarSvc_NetServImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----------Receiving----------\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v4, "ORDER"

    invoke-virtual {v2, v4}, Lcom/car/voice/remote/NetRequest;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "ISLAST"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/car/voice/remote/NetRequest;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "RET"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/car/voice/remote/NetRequest;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/car/voice/remote/NetServImpl$Client;->this$0:Lcom/car/voice/remote/NetServImpl;

    iget-object v4, v4, Lcom/car/voice/remote/NetServImpl;->mRemoteMicInfo:Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;

    invoke-interface {v4, v1, v0, v3}, Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;->onVoiceInput(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public outputMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/car/voice/remote/NetServImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_NetServImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputMessage stop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",queue size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new msg=\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method outputRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutputQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStopped:Z

    if-eqz v2, :cond_1

    const-string v2, "CarSvc_NetServImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputRun stopped, reply ignore:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_1
    sget-boolean v2, Lcom/car/voice/remote/NetServImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CarSvc_NetServImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------Sending-------------\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutStream:Ljava/io/OutputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method sendReq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v3, "REQ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/car/voice/remote/NetServImpl$Client;->outputMessage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method sendSuggestionResult(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v7, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v6, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v8, "RESULT:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/car/common/voice/SuggestItem;

    iget-object v6, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ITEM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/car/common/voice/SuggestItem;->toFormatString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v4}, Lcom/car/voice/remote/NetServImpl$Client;->outputMessage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method sendTips(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v3, "TIPS:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client;->mStringBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/car/voice/remote/NetServImpl$Client;->outputMessage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method start()V
    .locals 2

    new-instance v1, Lcom/car/voice/remote/NetServImpl$Client$1;

    invoke-direct {v1, p0}, Lcom/car/voice/remote/NetServImpl$Client$1;-><init>(Lcom/car/voice/remote/NetServImpl$Client;)V

    new-instance v0, Lcom/car/voice/remote/NetServImpl$Client$2;

    invoke-direct {v0, p0}, Lcom/car/voice/remote/NetServImpl$Client$2;-><init>(Lcom/car/voice/remote/NetServImpl$Client;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
