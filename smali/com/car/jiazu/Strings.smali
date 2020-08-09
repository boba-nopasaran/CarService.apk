.class public abstract Lcom/car/jiazu/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/jiazu/Strings;->stringToBytes(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;I)[B
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    if-gt v2, p1, :cond_1

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method
