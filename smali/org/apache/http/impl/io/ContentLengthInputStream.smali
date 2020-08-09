.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const-string v0, "Content length"

    invoke-static {p2, p3, v0}, Lorg/apache/http/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v1, v1, Lorg/apache/http/io/BufferInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    check-cast v1, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v1}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v1, :cond_2

    :try_start_0
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/16 v1, 0x800

    new-array v0, v1, [B

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    :cond_1
    iput-boolean v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-boolean v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    throw v1
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    new-instance v1, Lorg/apache/http/ConnectionClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-boolean v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Attempted read from closed stream."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, p3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    :cond_3
    iget-object v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v3, p1, p2, v0}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    new-instance v2, Lorg/apache/http/ConnectionClosedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-lez v1, :cond_1

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-gtz v8, :cond_1

    move-wide v2, v6

    :cond_0
    return-wide v2

    :cond_1
    const/16 v8, 0x800

    new-array v0, v8, [B

    iget-wide v8, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v10, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v8, v10

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const/4 v8, 0x0

    const-wide/16 v10, 0x800

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {p0, v0, v8, v9}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    int-to-long v8, v1

    add-long/2addr v2, v8

    int-to-long v8, v1

    sub-long/2addr v4, v8

    goto :goto_0
.end method
