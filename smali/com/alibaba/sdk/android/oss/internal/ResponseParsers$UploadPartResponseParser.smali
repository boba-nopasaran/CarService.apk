.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadPartResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
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
.method public bridge synthetic parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/UploadPartResult;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method

.method public parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/UploadPartResult;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    return-object p2
.end method
