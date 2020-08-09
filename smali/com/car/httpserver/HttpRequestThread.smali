.class Lcom/car/httpserver/HttpRequestThread;
.super Ljava/lang/Thread;
.source "HttpServerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_HttpRequestThread"


# instance fields
.field private final ALL_PATTERN:Ljava/lang/String;

.field private mBasicHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

.field private mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private mHttpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

.field private mHttpService:Lorg/apache/http/protocol/HttpService;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "*"

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->ALL_PATTERN:Ljava/lang/String;

    iput-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    iput-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    iput-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    iput-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0, p2}, Lcom/car/httpserver/HttpRequestThread;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v0, Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    new-instance v0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    const-string v1, "*"

    new-instance v2, Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-direct {v2, p3}, Lcom/car/httpserver/MyHttpRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/car/httpserver/HttpRequestThread;->mBasicHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "CarSvc_HttpRequestThread"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    const-string v2, "CarSvc_HttpRequestThread"

    const-string v3, "HttpException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    const-string v2, "CarSvc_HttpRequestThread"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V

    iget-object v3, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/httpserver/HttpRequestThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_1
    :goto_1
    throw v2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
