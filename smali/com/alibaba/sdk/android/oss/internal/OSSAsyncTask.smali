.class public Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
.super Ljava/lang/Object;
.source "OSSAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile canceled:Z

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;-><init>()V

    iput-object p0, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    iput-object p1, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/OSSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/alibaba/sdk/android/oss/ClientException;

    throw v0

    :cond_0
    instance-of v3, v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

.method public waitUntilFinished()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
