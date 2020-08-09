.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/EofSensor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private eof:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    const-string v1, "Socket"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    move v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    :cond_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    const/16 v0, 0x400

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected fillBuffer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataAvailable(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    return v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
.end method

.method public isEof()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method
