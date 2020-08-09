.class Lokhttp3/internal/framed/FramedConnection$Reader;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lokhttp3/internal/framed/FrameReader;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .locals 4

    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .locals 6

    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v5}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/FramedConnection$Reader$3;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->receiveData(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 5

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v3}, Lokhttp3/internal/framed/FrameReader;->readConnectionPreface()V

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v3, p0}, Lokhttp3/internal/framed/FrameReader;->nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 6

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_0

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/framed/FramedStream;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lokhttp3/internal/framed/FramedConnection;->access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v4}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p3, p5, p2}, Lokhttp3/internal/framed/FramedConnection;->access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1600(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, p3, v2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    monitor-exit v7

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1700(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v1

    if-gt p3, v1, :cond_4

    monitor-exit v7

    goto :goto_0

    :cond_4
    rem-int/lit8 v1, p3, 0x2

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1800(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_5

    monitor-exit v7

    goto :goto_0

    :cond_5
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->access$1702(Lokhttp3/internal/framed/FramedConnection;I)I

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/framed/FramedConnection$Reader$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/framed/FramedConnection$Reader$1;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v7

    goto :goto_0

    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v6, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6, p5, p6}, Lokhttp3/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    if-eqz p2, :cond_0

    invoke-virtual {v6}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    goto/16 :goto_0
.end method

.method public ping(ZII)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/framed/Ping;->receive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, p3, v3}, Lokhttp3/internal/framed/FramedConnection;->access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLokhttp3/internal/framed/Settings;)V
    .locals 15

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    if-eqz p1, :cond_0

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/framed/Settings;->clear()V

    :cond_0
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v8}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v8

    sget-object v10, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v8, v10, :cond_1

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedConnection$Reader;->applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V

    :cond_1
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    if-eq v4, v5, :cond_3

    sub-int v8, v4, v5

    int-to-long v2, v8

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$2300(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v8, v2, v3}, Lokhttp3/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lokhttp3/internal/framed/FramedConnection;->access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z

    :cond_2
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v10}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    move-object v7, v0

    :cond_3
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v10, Lokhttp3/internal/framed/FramedConnection$Reader$2;

    const-string v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v14}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, p0, v11, v12}, Lokhttp3/internal/framed/FramedConnection$Reader$2;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4

    array-length v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v6, v7, v8

    monitor-enter v6

    :try_start_1
    invoke-virtual {v6, v2, v3}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6

    if-nez p1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v4, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
