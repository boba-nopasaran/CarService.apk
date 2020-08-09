.class public Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateBase64Md5([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateMd5(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v6, 0x1000

    new-array v0, v6, [B

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "MD5 algorithm not found."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method public static calculateMd5([B)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MD5 algorithm not found."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateMd5Str([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBase64String(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMd5StrFromBytes([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toBase64String([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
