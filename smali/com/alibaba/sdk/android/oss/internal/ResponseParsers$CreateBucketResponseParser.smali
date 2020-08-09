.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateBucketResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
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
.method public parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p2, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;->bucketLocation:Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public bridge synthetic parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;

    move-result-object v0

    return-object v0
.end method
