.class public Lcom/alibaba/sdk/android/oss/internal/RequestMessage;
.super Ljava/lang/Object;
.source "RequestMessage.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private endpoint:Ljava/net/URI;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAuthorizationRequired:Z

.field private isHttpdnsEnable:Z

.field private isInCustomCnameExcludeList:Z

.field private method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field private objectKey:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readStreamLength:J

.field private uploadData:[B

.field private uploadFilePath:Ljava/lang/String;

.field private uploadInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->headers:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpdnsEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    return-void
.end method


# virtual methods
.method public buildCanonicalURL()Ljava/lang/String;
    .locals 12

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    const-string v9, "Endpoint haven\'t been set!"

    invoke-static {v8, v9}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isCname(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpdnsEnable:Z

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getInstance()Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_1

    move-object v7, v3

    :cond_1
    move-object v1, v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isCname(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->headers:Ljava/util/Map;

    const-string v9, "Host"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request---------------------\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request params="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->headers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestHeader ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->headers:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v8, "[buildCannonicalURL] - proxy exist, disable httpdns"

    invoke-static {v8}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_3
    return-object v0

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public createBucketRequestBodyMarshall(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const-string v5, "<CreateBucketConfiguration>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<LocationConstraint>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</LocationConstraint>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "</CreateBucketConfiguration>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    int-to-long v2, v5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadInputStream(Ljava/io/InputStream;J)V

    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getReadStreamLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->readStreamLength:J

    return-wide v0
.end method

.method public getUploadData()[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadData:[B

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isAuthorizationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    return v0
.end method

.method public isHttpdnsEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpdnsEnable:Z

    return v0
.end method

.method public isInCustomCnameExcludeList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->endpoint:Ljava/net/URI;

    return-void
.end method

.method public setIsAuthorizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired:Z

    return-void
.end method

.method public setIsHttpdnsEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isHttpdnsEnable:Z

    return-void
.end method

.method public setIsInCustomCnameExcludeList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isInCustomCnameExcludeList:Z

    return-void
.end method

.method public setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->method:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setUploadData([B)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadData:[B

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadFilePath:Ljava/lang/String;

    return-void
.end method

.method public setUploadInputStream(Ljava/io/InputStream;J)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->uploadInputStream:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->readStreamLength:J

    :cond_0
    return-void
.end method
