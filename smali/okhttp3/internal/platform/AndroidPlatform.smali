.class Lokhttp3/internal/platform/AndroidPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    iput-object p4, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    iput-object p5, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 14

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    :try_start_1
    new-instance v2, Lokhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setUseSessionTickets"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-direct {v2, v0, v10, v11}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v3, Lokhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setHostname"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-direct {v3, v0, v10, v11}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v7, Lokhttp3/internal/platform/OptionalMethod;

    const-class v0, [B

    const-string v10, "getAlpnSelectedProtocol"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-direct {v7, v0, v10, v11}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v8, Lokhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setAlpnProtocols"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-direct {v8, v0, v10, v11}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v8

    move-object v4, v7

    :goto_1
    :try_start_4
    new-instance v0, Lokhttp3/internal/platform/AndroidPlatform;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v6

    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v9

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v4, v7

    goto :goto_1
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 9

    :try_start_0
    const-string v5, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/X509TrustManager;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/security/cert/X509Certificate;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v5, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    invoke-direct {v5, v3, v0}, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v5

    goto :goto_0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, p1, v2}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lokhttp3/internal/platform/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 9

    :try_start_0
    const-string v5, "android.security.NetworkSecurityPolicy"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "isCleartextTrafficPermitted"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v0

    :goto_1
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    :goto_0
    if-eqz p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit16 v5, v1, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v5, "OkHttp"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move v1, v0

    if-lt v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 7

    iget-object v4, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v5, "sslParameters"

    invoke-static {p1, v4, v5}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v4, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "sslParameters"

    invoke-static {p1, v2, v4}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "x509TrustManager"

    invoke-static {v0, v4, v5}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "trustManager"

    invoke-static {v0, v4, v5}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    move-object v3, v4

    goto :goto_0
.end method
