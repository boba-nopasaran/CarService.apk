.class public Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
.super Ljava/lang/Object;
.source "InternalRequestOperation.java"


# static fields
.field private static final LIST_PART_MAX_RETURNS:I = 0x3e8

.field private static final MAX_PART_NUMBER:I = 0x2710

.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private volatile endpoint:Ljava/net/URI;

.field private innerClient:Lokhttp3/OkHttpClient;

.field private maxRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    iput v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/net/URI;)V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz p4, :cond_1

    new-instance v1, Lokhttp3/Dispatcher;

    invoke-direct {v1}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxConcurrentRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getConnectionTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxErrorRetry()I

    move-result v2

    iput v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Date"

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->currentFixedSkewedTimeInRFC822Format()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-ne v2, v3, :cond_2

    :cond_1
    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->determineContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkIfHttpdnsAwailable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsHttpdnsEnable(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/VersionInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsInCustomCnameExcludeList(Z)V

    return-void
.end method

.method private checkIfHttpdnsAwailable()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "http.proxyHost"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "append"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "position"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getPosition()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildXMLFromPartEtagList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-oss-callback"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-oss-callback-var"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_2
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateCopyObjectHeaders(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Ljava/util/Map;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->isAuthorizationRequired()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v5, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "x-oss-acl"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->createBucketRequestBodyMarshall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-direct {v2, v5, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v5, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v5, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "acl"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->isAuthorizationRequired()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v5, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v5, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v4, v2, v1, v5}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v5, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v5

    return-object v5
.end method

.method public getInnerClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-oss-process"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uploads"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateListObjectsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Ljava/util/Map;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    new-instance v15, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v15}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v15, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v15, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v15, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uploadId"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MaxPartsOutOfRange: 1000"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "max-parts"

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PartNumberMarkerOutOfRange: 10000"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "part-number-marker"

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v11, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v11, v2, v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_4
    new-instance v13, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;

    invoke-direct {v13}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;-><init>()V

    new-instance v10, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v10, v15, v13, v11, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v2

    return-object v2
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-oss-callback"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-oss-callback-var"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-void
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->isAuthorizationRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "partNumber"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-MD5"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    return-object v4
.end method
