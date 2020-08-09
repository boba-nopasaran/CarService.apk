.class public Lcom/car/httpserver/MyHttpRequestHandler;
.super Ljava/lang/Object;
.source "MyHttpRequestHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_MyHttpRequestHandler"


# instance fields
.field private FOLDER_SHARE_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    const-string v0, "/system/backup/CarAssist/"

    iput-object v0, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/car/httpserver/MyHttpRequestHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/MyHttpRequestHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEntityFromUri(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Lorg/apache/http/HttpEntity;
    .locals 8

    const-string v0, "text/html"

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Lorg/apache/http/entity/EntityTemplate;

    new-instance v5, Lcom/car/httpserver/MyHttpRequestHandler$1;

    invoke-direct {v5, p0, p3}, Lcom/car/httpserver/MyHttpRequestHandler$1;-><init>(Lcom/car/httpserver/MyHttpRequestHandler;Z)V

    invoke-direct {v2, v5}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    const-string v5, "Content-Type"

    const-string v6, "text/html"

    invoke-interface {p2, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/car/httpserver/MyHttpRequestHandler;->FOLDER_SHARE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "CarSvc_MyHttpRequestHandler"

    const-string v6, "URLDecoder.decode:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/entity/FileEntity;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    invoke-interface {p2, v5, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/apache/http/entity/EntityTemplate;

    new-instance v5, Lcom/car/httpserver/MyHttpRequestHandler$2;

    invoke-direct {v5, p0}, Lcom/car/httpserver/MyHttpRequestHandler$2;-><init>(Lcom/car/httpserver/MyHttpRequestHandler;)V

    invoke-direct {v2, v5}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    const-string v5, "Content-Type"

    const-string v6, "text/html"

    invoke-interface {p2, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    move-object v0, v3

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    const-string v8, "CarSvc_MyHttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "User-Agent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "micromessenger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2, v5}, Lcom/car/httpserver/MyHttpRequestHandler;->getEntityFromUri(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
