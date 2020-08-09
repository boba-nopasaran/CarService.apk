.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListPartsResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
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
.method public parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->access$500(Ljava/io/InputStream;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object p2

    return-object p2
.end method

.method public bridge synthetic parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/ListPartsResult;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object v0

    return-object v0
.end method
