.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v7, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    if-ge v6, p2, :cond_1

    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    add-int/lit8 v8, v8, 0x1

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_1
    new-array v0, v8, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v0, v8, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v7, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1
    if-ge v6, p2, :cond_3

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v1, v7, Lokio/Segment;->data:[B

    aput-object v1, v0, v8

    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    if-le v6, p2, :cond_2

    move v6, p2

    :cond_2
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    aput v6, v0, v8

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v8

    iget v2, v7, Lokio/Segment;->pos:I

    aput v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, v7, Lokio/Segment;->shared:Z

    add-int/lit8 v8, v8, 0x1

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 5

    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private toByteString()Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getByte(I)B
    .locals 9

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v6

    aget v8, v0, v1

    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v0, v0, v6

    sub-int v1, p1, v7

    add-int/2addr v1, v8

    aget-byte v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v1, v6, -0x1

    aget v7, v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 13

    iget v3, p0, Lokio/SegmentedByteString;->hashCode:I

    if-eqz v3, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v11, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v11

    :goto_1
    if-ge v5, v7, :cond_2

    iget-object v11, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v11, v5

    iget-object v11, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v12, v7, v5

    aget v9, v11, v12

    iget-object v11, p0, Lokio/SegmentedByteString;->directory:[I

    aget v2, v11, v5

    sub-int v10, v2, v8

    move v0, v9

    add-int v1, v9, v10

    :goto_2
    if-ge v0, v1, :cond_1

    mul-int/lit8 v11, v3, 0x1f

    aget-byte v12, v6, v0

    add-int v3, v11, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v8, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lokio/SegmentedByteString;->hashCode:I

    move v4, v3

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .locals 1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 9

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v7

    sub-int/2addr v7, p4

    if-le p1, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_1
    if-lez p4, :cond_3

    if-nez v1, :cond_2

    move v2, v6

    :goto_2
    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    aget v7, v7, v1

    sub-int v4, v7, v2

    add-int v7, v2, v4

    sub-int/2addr v7, p1

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v8, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    add-int/2addr v8, v1

    aget v3, v7, v8

    sub-int v7, p1, v2

    add-int v0, v7, v3

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-virtual {p2, p3, v7, v0, v5}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/2addr p1, v5

    add-int/2addr p3, v5

    sub-int/2addr p4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v8, v1, -0x1

    aget v2, v7, v8

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public rangeEquals(I[BII)Z
    .locals 9

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v7

    sub-int/2addr v7, p4

    if-gt p1, v7, :cond_0

    if-ltz p3, :cond_0

    array-length v7, p2

    sub-int/2addr v7, p4

    if-le p3, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_1
    if-lez p4, :cond_3

    if-nez v1, :cond_2

    move v2, v6

    :goto_2
    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    aget v7, v7, v1

    sub-int v4, v7, v2

    add-int v7, v2, v4

    sub-int/2addr v7, p1

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v8, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    add-int/2addr v8, v1

    aget v3, v7, v8

    sub-int v7, p1, v2

    add-int v0, v7, v3

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, p2, p3, v5}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/2addr p1, v5

    add-int/2addr p3, v5

    sub-int/2addr p4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v8, v1, -0x1

    aget v2, v7, v8

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public sha1()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    new-array v1, v6, [B

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v7, v3, v2

    aget v5, v6, v7

    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    aget v0, v6, v2

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v0, v4

    invoke-static {v6, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v5

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v2, v1

    aget v4, v5, v6

    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    aget v0, v5, v1

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v0, v3

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    move v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method write(Lokio/Buffer;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v7, v3, v1

    aget v5, v6, v7

    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    aget v0, v6, v1

    new-instance v2, Lokio/Segment;

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v5, v0

    sub-int/2addr v7, v4

    invoke-direct {v2, v6, v5, v7}, Lokio/Segment;-><init>([BII)V

    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_0

    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1
    move v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v6, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_1

    :cond_1
    iget-wide v6, p1, Lokio/Buffer;->size:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p1, Lokio/Buffer;->size:J

    return-void
.end method
