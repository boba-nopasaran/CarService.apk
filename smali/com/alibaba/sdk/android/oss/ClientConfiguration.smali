.class public Lcom/alibaba/sdk/android/oss/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field private static final DEFAULT_MAX_RETRIES:I = 0x2

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private customCnameExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxConcurrentRequest:I

.field private maxErrorRetry:I

.field private max_log_size:J

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private socketTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/VersionInfoUtils;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x3a98

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    iput v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    iput v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    return-void
.end method

.method public static getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getCustomCnameExcludeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxConcurrentRequest()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getMaxLogSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-wide v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getSocketTimeout()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCustomCnameExcludeList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cname exclude list should not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->customCnameExcludeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setMaxConcurrentRequest(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxConcurrentRequest:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->max_log_size:J

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->proxyPort:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->socketTimeout:I

    return-void
.end method
