.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v13}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v14, "Content-Type"

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v14, -0x1

    cmp-long v14, v4, v14

    if-eqz v14, :cond_8

    const-string v14, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v14, "Transfer-Encoding"

    invoke-virtual {v8, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    :goto_0
    const-string v14, "Host"

    invoke-virtual {v13, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    const-string v14, "Host"

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    const-string v14, "Connection"

    invoke-virtual {v13, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_3
    const/4 v12, 0x0

    const-string v14, "Accept-Encoding"

    invoke-virtual {v13, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    const/4 v12, 0x1

    const-string v14, "Accept-Encoding"

    const-string v15, "gzip"

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-interface {v14, v15}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "Cookie"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_5
    const-string v14, "User-Agent"

    invoke-virtual {v13, v14}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    const-string v14, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_6
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v15

    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    invoke-virtual {v7}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v10

    if-eqz v12, :cond_7

    const-string v14, "gzip"

    const-string v15, "Content-Encoding"

    invoke-virtual {v7, v15}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v7}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v14

    if-eqz v14, :cond_7

    new-instance v9, Lokio/GzipSource;

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v14

    invoke-direct {v9, v14}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v14

    const-string v15, "Content-Encoding"

    invoke-virtual {v14, v15}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-virtual {v14, v15}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v11

    invoke-virtual {v10, v11}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    new-instance v14, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v15

    invoke-direct {v14, v11, v15}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v10, v14}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    :cond_7
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    return-object v14

    :cond_8
    const-string v14, "Transfer-Encoding"

    const-string v15, "chunked"

    invoke-virtual {v8, v14, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v14, "Content-Length"

    invoke-virtual {v8, v14}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_0
.end method
