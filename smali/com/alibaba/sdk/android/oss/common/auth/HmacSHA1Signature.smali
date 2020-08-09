.class public Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;
.super Ljava/lang/Object;
.source "HmacSHA1Signature.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final LOCK:Ljava/lang/Object;

.field private static final VERSION:Ljava/lang/String; = "1"

.field private static macInstance:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sign([B[B)[B
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v4, :cond_1

    sget-object v5, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v4, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    sput-object v4, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v4, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupported algorithm: HmacSHA1"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "key must not be null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->sign([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unsupported algorithm: UTF-8"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "HmacSHA1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
