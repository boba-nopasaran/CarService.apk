.class public Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;
.super Ljava/lang/Object;
.source "OSSRetryHandler.java"


# instance fields
.field private maxRetryCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->setMaxRetryCount(I)V

    return-void
.end method


# virtual methods
.method public setMaxRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    return-void
.end method

.method public shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
    .locals 4

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    if-lt p2, v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    :goto_0
    return-object v2

    :cond_0
    instance-of v2, p1, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/ClientException;->isCanceledException()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_2

    const-string v2, "[shouldRetry] - is interrupted!"

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldRetry - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz v2, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RequestTimeTooSkewed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_6

    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    goto/16 :goto_0
.end method
