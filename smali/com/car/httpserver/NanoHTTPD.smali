.class public abstract Lcom/car/httpserver/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/httpserver/NanoHTTPD$1;,
        Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;,
        Lcom/car/httpserver/NanoHTTPD$TempFileManager;,
        Lcom/car/httpserver/NanoHTTPD$TempFile;,
        Lcom/car/httpserver/NanoHTTPD$ServerRunnable;,
        Lcom/car/httpserver/NanoHTTPD$ResponseException;,
        Lcom/car/httpserver/NanoHTTPD$Response;,
        Lcom/car/httpserver/NanoHTTPD$Method;,
        Lcom/car/httpserver/NanoHTTPD$IHTTPSession;,
        Lcom/car/httpserver/NanoHTTPD$HTTPSession;,
        Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;,
        Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;,
        Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;,
        Lcom/car/httpserver/NanoHTTPD$CookieHandler;,
        Lcom/car/httpserver/NanoHTTPD$Cookie;,
        Lcom/car/httpserver/NanoHTTPD$ClientHandler;,
        Lcom/car/httpserver/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_REGEX:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_REGEX:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_REGEX:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CarSvc_NanoHTTPD"


# instance fields
.field protected asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private tempFileManagerFactory:Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/car/httpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD;->hostname:Ljava/lang/String;

    iput p2, p0, Lcom/car/httpserver/NanoHTTPD;->myPort:I

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lcom/car/httpserver/NanoHTTPD;Lcom/car/httpserver/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lcom/car/httpserver/NanoHTTPD;->setTempFileManagerFactory(Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;)V

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lcom/car/httpserver/NanoHTTPD;->setAsyncRunner(Lcom/car/httpserver/NanoHTTPD$AsyncRunner;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/car/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/car/httpserver/NanoHTTPD;)Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->tempFileManagerFactory:Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/car/httpserver/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/httpserver/NanoHTTPD;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/httpserver/NanoHTTPD;)I
    .locals 1

    iget v0, p0, Lcom/car/httpserver/NanoHTTPD;->myPort:I

    return v0
.end method

.method static synthetic access$700(Lcom/car/httpserver/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public static makeSSLSocketFactory(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const-class v7, Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v3, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    const-string v7, "TLS"

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v7

    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v4

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v1, p0, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p0, Ljava/net/Socket;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NanoHTTPD"

    const-string v2, "Could not close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    instance-of v1, p0, Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown object to close"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/car/httpserver/NanoHTTPD;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/car/httpserver/NanoHTTPD$ClientHandler;
    .locals 2

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/car/httpserver/NanoHTTPD$ClientHandler;-><init>(Lcom/car/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lcom/car/httpserver/NanoHTTPD$1;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lcom/car/httpserver/NanoHTTPD$ServerRunnable;
    .locals 2

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;-><init>(Lcom/car/httpserver/NanoHTTPD;ILcom/car/httpserver/NanoHTTPD$1;)V

    return-object v0
.end method

.method protected decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_4

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method protected decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/car/httpserver/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "UTF8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CarSvc_NanoHTTPD"

    const-string v3, "Encoding not supported, ignored"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getListeningPort()I
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public final isAlive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/car/httpserver/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    return-void
.end method

.method public newChunkedResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 6

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Response;

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD$Response;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 6

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Response;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD$Response;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 8

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v0, v2, [B

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v6

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "CarSvc_NanoHTTPD"

    const-string v1, "encoding problem, responding nothing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v6, v2, [B

    goto :goto_1
.end method

.method public newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 2

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1, p1}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public serve(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 9

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getMethod()Lcom/car/httpserver/NanoHTTPD$Method;

    move-result-object v2

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->PUT:Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lcom/car/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->POST:Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lcom/car/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v5}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    invoke-interface {p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/car/httpserver/NanoHTTPD;->serve(Ljava/lang/String;Lcom/car/httpserver/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Lcom/car/httpserver/NanoHTTPD$ResponseException;->getStatus()Lcom/car/httpserver/NanoHTTPD$Response$Status;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v7}, Lcom/car/httpserver/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0
.end method

.method public serve(Ljava/lang/String;Lcom/car/httpserver/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/car/httpserver/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncRunner(Lcom/car/httpserver/NanoHTTPD$AsyncRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    return-void
.end method

.method public setTempFileManagerFactory(Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD;->tempFileManagerFactory:Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/car/httpserver/NanoHTTPD;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    iput-object v1, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    :goto_0
    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-virtual {p0, p1}, Lcom/car/httpserver/NanoHTTPD;->createServerRunnable(I)Lcom/car/httpserver/NanoHTTPD$ServerRunnable;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v3, "NanoHttpd Main Listener"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_1
    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->access$1100(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->access$1200(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->access$1200(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->access$1200(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lcom/car/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1}, Lcom/car/httpserver/NanoHTTPD$AsyncRunner;->closeAll()V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NanoHTTPD"

    const-string v2, "Could not stop all connections"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected useGzipWhenAccepted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final wasStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
