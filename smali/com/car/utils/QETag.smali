.class public final Lcom/car/utils/QETag;
.super Ljava/lang/Object;
.source "QETag.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x400000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static data([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/car/utils/QETag;->data([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static data([BII)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/car/utils/QETag;->stream(Ljava/io/InputStream;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static file(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/car/utils/QETag;->stream(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static file(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/car/utils/QETag;->file(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static oneBlock([BLjava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "sha-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    array-length v0, p0

    :goto_0
    if-eqz p2, :cond_1

    if-le v0, p2, :cond_0

    move v2, p2

    :goto_1
    invoke-virtual {p1, p0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v3, p0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    sub-int/2addr p2, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_2
    return-object v4

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    goto :goto_2
.end method

.method private static resultEncode([[B)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v3, 0x16

    aget-object v2, p0, v11

    array-length v5, v2

    add-int/lit8 v10, v5, 0x1

    new-array v7, v10, [B

    array-length v10, p0

    if-eq v10, v12, :cond_1

    const/16 v3, -0x6a

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "sha-1"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, p0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v8, v0, v4

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_0
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    :cond_1
    aput-byte v3, v7, v11

    invoke-static {v2, v11, v7, v12, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v7}, Lcom/car/utils/UrlSafeBase64;->encodeToString([B)Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method public static stream(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-nez v3, :cond_0

    const-string v3, "Fto5o-5ea0sNMlW_75VgGJCv2AcJ"

    :goto_0
    return-object v3

    :cond_0
    const/high16 v3, 0x10000

    new-array v1, v3, [B

    const-wide/32 v8, 0x400000

    add-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-int v3, v8

    const/high16 v8, 0x400000

    div-int/2addr v3, v8

    new-array v0, v3, [[B

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    const-wide/32 v8, 0x400000

    int-to-long v10, v2

    mul-long/2addr v8, v10

    sub-long v4, p1, v8

    const-wide/32 v8, 0x400000

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    const-wide/32 v6, 0x400000

    :goto_2
    long-to-int v3, v6

    invoke-static {v1, p0, v3}, Lcom/car/utils/QETag;->oneBlock([BLjava/io/InputStream;I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-wide v6, v4

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/car/utils/QETag;->resultEncode([[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
