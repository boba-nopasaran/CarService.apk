.class public Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-array v3, v4, [B

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x800

    new-array v0, v3, [B

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x800

    const/4 v8, 0x0

    if-nez p0, :cond_0

    new-array v3, v8, [B

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v9, [B

    const-wide/16 v4, 0x0

    :goto_1
    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    int-to-long v6, p1

    sub-long/2addr v6, v4

    long-to-int v3, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v8, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v2, v0, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v4, ""

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v2, 0x0

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    const/16 v6, 0x400

    new-array v0, v6, [C

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v2, v3

    :goto_2
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    :cond_3
    throw v6

    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    :cond_5
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    goto :goto_0

    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
