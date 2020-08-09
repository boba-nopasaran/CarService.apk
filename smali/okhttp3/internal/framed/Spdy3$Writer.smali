.class final Lokhttp3/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lokio/Buffer;

.field private final headerBlockOut:Lokio/BufferedSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lokhttp3/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    new-instance v1, Lokio/DeflaterSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/framed/Header;

    iget-object v1, v4, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4, v1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/framed/Header;

    iget-object v3, v4, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4, v3}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V

    return-void
.end method


# virtual methods
.method public applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Spdy3$Writer;->sendDataFrame(IILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/framed/ErrorCode;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget v3, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v2, 0x7

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff9

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public maxDataLength()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    iget-boolean v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v5, p2, 0x1

    if-ne v5, v2, :cond_1

    move v5, v2

    :goto_0
    if-eq v6, v5, :cond_2

    :goto_1
    if-eq p1, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x4

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, -0x7ffcfffa

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget v3, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/16 v1, 0x8

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfffd

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method sendDataFrame(IILokio/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    if-lez p4, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lokhttp3/internal/framed/Settings;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v9, 0xffffff

    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    const/4 v5, 0x4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->size()I

    move-result v4

    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v2, v6, 0x4

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v7, -0x7ffcfffc

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v7, v2, v9

    or-int/lit8 v7, v7, 0x0

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    invoke-virtual {p1, v1}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lokhttp3/internal/framed/Settings;->flags(I)I

    move-result v3

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int v8, v1, v9

    or-int/2addr v7, v8

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfffe

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    const-wide/16 v4, 0xa

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-eqz p2, :cond_2

    const/4 v4, 0x2

    :goto_1
    or-int v0, v5, v4

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, -0x7ffcffff

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p3

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v2, 0x9

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff7

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
