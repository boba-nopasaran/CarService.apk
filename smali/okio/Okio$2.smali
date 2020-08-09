.class final Lokio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Timeout;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    iput-object p2, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    :goto_0
    return-wide v4

    :cond_1
    :try_start_0
    iget-object v4, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    invoke-virtual {v4}, Lokio/Timeout;->throwIfReached()V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    iget v4, v3, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v5, v3, Lokio/Segment;->data:[B

    iget v6, v3, Lokio/Segment;->limit:I

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lokio/Segment;->limit:I

    iget-wide v4, p1, Lokio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
