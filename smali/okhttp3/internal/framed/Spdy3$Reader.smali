.class final Lokhttp3/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    new-instance v0, Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_GOAWAY length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "TYPE_GOAWAY unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_1
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, v2, v0, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v7

    const v0, 0x7fffffff

    and-int v3, v7, v0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_PING length: %d != 4"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-boolean v4, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v0, :cond_1

    move v3, v0

    :goto_0
    if-ne v4, v3, :cond_2

    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_RST_STREAM length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_1
    invoke-interface {p1, v2, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v4

    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v9, v9, 0x4

    if-eq p3, v9, :cond_0

    const-string v9, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    :cond_0
    new-instance v5, Lokhttp3/internal/framed/Settings;

    invoke-direct {v5}, Lokhttp3/internal/framed/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v7

    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const/high16 v9, -0x1000000

    and-int/2addr v9, v7

    ushr-int/lit8 v3, v9, 0x18

    const v9, 0xffffff

    and-int v2, v7, v9

    invoke-virtual {v5, v2, v3, v6}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_2

    :goto_1
    invoke-interface {p1, v0, v5}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    return-void

    :cond_2
    move v0, v8

    goto :goto_1
.end method

.method private readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v7

    const v0, 0x7fffffff

    and-int v3, v7, v0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0x4

    invoke-virtual {v0, v4}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method private readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v9, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v7

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v8

    and-int v3, v7, v9

    and-int v4, v8, v9

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v9, p3, -0xa

    invoke-virtual {v6, v9}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    move v2, v1

    :goto_0
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    :goto_1
    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x8

    if-eq p3, v5, :cond_0

    const-string v5, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_0
    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v3

    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v4

    and-int v2, v3, v6

    and-int v5, v4, v6

    int-to-long v0, v5

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    const-string v5, "windowSizeIncrement was 0"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_1
    invoke-interface {p1, v2, v0, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->close()V

    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v10, 0x1

    :try_start_0
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v11}, Lokio/BufferedSource;->readInt()I

    move-result v8

    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v11}, Lokio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/high16 v11, -0x80000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_0

    move v0, v10

    :goto_0
    const/high16 v11, -0x1000000

    and-int/2addr v11, v9

    ushr-int/lit8 v2, v11, 0x18

    const v11, 0xffffff

    and-int v4, v9, v11

    if-eqz v0, :cond_2

    const/high16 v11, 0x7fff0000

    and-int/2addr v11, v8

    ushr-int/lit8 v7, v11, 0x10

    const v11, 0xffff

    and-int v6, v8, v11

    const/4 v11, 0x3

    if-eq v7, v11, :cond_1

    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version != 3: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_0
    move-exception v1

    move v10, v3

    :goto_1
    return v10

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v12, v4

    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->skip(J)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    :cond_2
    const v11, 0x7fffffff

    and-int v5, v8, v11

    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_3

    move v3, v10

    :cond_3
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v3, v5, v11, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    return-void
.end method
