.class public Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;
.super Ljava/lang/Object;
.source "OSSRequestTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private currentRetryCount:I

.field private message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

.field private responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/internal/ResponseParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    invoke-direct {v0, p4}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    return-void
.end method


# virtual methods
.method public call()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v26, "[call] - "

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureRequestValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->signRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_6

    new-instance v26, Ljava/io/InterruptedIOException;

    const-string v27, "This task is cancelled!"

    invoke-direct/range {v26 .. v27}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Encounter local execpiton: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance v7, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0, v6}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v19, :cond_1

    const-string v26, "Date"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :try_start_1
    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->setCurrentServerTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    if-nez v7, :cond_f

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->code()I

    move-result v26

    const/16 v27, 0xcb

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->code()I

    move-result v26

    const/16 v27, 0x12c

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_f

    :cond_2
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v26

    const-string v27, "HEAD"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseResponseErrorXML(Lokhttp3/Response;Z)Lcom/alibaba/sdk/android/oss/ServiceException;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    move-object v8, v7

    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lokhttp3/Call;->isCanceled()Z

    move-result v26

    if-nez v26, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_15

    :cond_4
    new-instance v7, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v26, "Task is cancelled!"

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    move-result-object v22

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[run] - retry, retry type: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    sget-object v26, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v21

    :cond_5
    :goto_4
    return-object v21

    :cond_6
    :try_start_3
    new-instance v18, Lokhttp3/Request$Builder;

    invoke-direct/range {v18 .. v18}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->buildCanonicalURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v18

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v26

    const-string v27, "Content-Type"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v26, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$1;->$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    :goto_6
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v17

    instance-of v0, v13, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lokhttp3/OkHttpClient;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    const-string v26, "getObject"

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->setCall(Lokhttp3/Call;)V

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "response:---------------------\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "response code: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->code()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " for url: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "response msg: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "responseHeader ["

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "]: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v29, "\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_0
    if-eqz v5, :cond_a

    const/16 v26, 0x1

    :goto_8
    const-string v27, "Content type can\'t be null when upload!"

    invoke-static/range {v26 .. v27}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v26

    if-eqz v26, :cond_b

    new-instance v11, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v14, v0

    :cond_9
    :goto_9
    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v11, v14, v15, v5, v0}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v18

    goto/16 :goto_6

    :cond_a
    const/16 v26, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadInputStream()Ljava/io/InputStream;

    move-result-object v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getReadStreamLength()J

    move-result-wide v14

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v18

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v18

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v18

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v18

    goto/16 :goto_6

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    new-instance v7, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0, v6}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v7

    goto/16 :goto_2

    :cond_f
    if-nez v7, :cond_16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParser;->parse(Lokhttp3/Response;)Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v26

    if-eqz v26, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v26

    goto/16 :goto_4

    :catch_3
    move-exception v6

    new-instance v7, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0, v6}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v7

    goto/16 :goto_2

    :cond_10
    sget-object v26, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_12

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v26

    const-string v27, "Date"

    const-string v28, "Date"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v21

    goto/16 :goto_4

    :cond_12
    instance-of v0, v7, Lcom/alibaba/sdk/android/oss/ClientException;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v28

    move-object/from16 v26, v7

    check-cast v26, Lcom/alibaba/sdk/android/oss/ClientException;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_13
    :goto_a
    throw v7

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v26, v7

    check-cast v26, Lcom/alibaba/sdk/android/oss/ServiceException;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    goto :goto_a

    :catch_4
    move-exception v26

    goto/16 :goto_1

    :cond_15
    move-object v7, v8

    goto/16 :goto_3

    :cond_16
    move-object v8, v7

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0
.end method
