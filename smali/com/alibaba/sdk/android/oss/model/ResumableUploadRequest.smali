.class public Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "ResumableUploadRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackParam:Ljava/util/Map;
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

.field private callbackVars:Ljava/util/Map;
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

.field private deleteUploadOnCancelling:Ljava/lang/Boolean;

.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private objectKey:Ljava/lang/String;

.field private partSize:J

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private recordDirectory:Ljava/lang/String;

.field private uploadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->partSize:J

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setUploadFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setRecordDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteUploadOnCancelling()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackParam()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->callbackParam:Ljava/util/Map;

    return-object v0
.end method

.method public getCallbackVars()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->callbackVars:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getRecordDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->recordDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackParam(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->callbackParam:Ljava/util/Map;

    return-void
.end method

.method public setCallbackVars(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->callbackVars:Ljava/util/Map;

    return-void
.end method

.method public setDeleteUploadOnCancelling(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling:Ljava/lang/Boolean;

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setPartSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/32 v0, 0x19000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Part size must be greater than or equal to 100KB!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->partSize:J

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRecordDirectory(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Record directory must exist, and it should be a directory!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->recordDirectory:Ljava/lang/String;

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method
