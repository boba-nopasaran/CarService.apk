.class public abstract Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.super Ljava/lang/Object;
.source "AbstractResponseParser.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/internal/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/internal/ResponseParser;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseResponseHeader(Lokhttp3/Response;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static safeCloseResponse(Lokhttp3/Response;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public needCloseResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lokhttp3/Response;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v5, v6, v7

    move-object v0, v5

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/OSSResult;

    if-eqz v4, :cond_0

    const-string v6, "x-oss-request-id"

    invoke-virtual {p1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setStatusCode(I)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->parseResponseHeader(Lokhttp3/Response;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->setResponseHeader(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v4}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->needCloseResponse()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->safeCloseResponse(Lokhttp3/Response;)V

    :cond_1
    return-object v4

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->needCloseResponse()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;->safeCloseResponse(Lokhttp3/Response;)V

    :cond_2
    throw v6
.end method

.method abstract parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
