.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbortMultipartUploadResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p2
.end method

.method public bridge synthetic parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method
