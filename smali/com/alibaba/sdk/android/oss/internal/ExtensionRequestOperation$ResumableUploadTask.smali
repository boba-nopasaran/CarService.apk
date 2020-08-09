.class Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;
.super Ljava/lang/Object;
.source "ExtensionRequestOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumableUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private currentUploadLength:J

.field private fileLength:J

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private recordFile:Ljava/io/File;

.field private request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
            "<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->partETags:Ljava/util/List;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    return-void
.end method

.method private abortThisResumableUpload()V
    .locals 4

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->access$000(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    return-wide v0
.end method

.method private doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->abortThisResumableUpload()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->throwOutInterruptClientException()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->partETags:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v10, v21, 0x1

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-wide/from16 v22, v0

    div-long v22, v22, v6

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-wide/from16 v24, v0

    rem-long v24, v24, v6

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-nez v21, :cond_2

    const/16 v21, 0x0

    :goto_0
    add-int v17, v22, v21

    move/from16 v0, v17

    if-gt v10, v0, :cond_3

    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    :goto_1
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    move-wide/from16 v22, v0

    cmp-long v21, v4, v22

    if-gez v21, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v4

    move-wide/from16 v0, v22

    invoke-virtual {v11, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    const-wide/16 v22, -0x1

    cmp-long v21, v14, v22

    if-nez v21, :cond_4

    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skip failed! [fileLength]: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " [needSkip]: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_2
    const/16 v21, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    goto :goto_1

    :cond_4
    add-long/2addr v4, v14

    goto :goto_2

    :cond_5
    :goto_3
    move/from16 v0, v17

    if-gt v10, v0, :cond_7

    new-instance v19, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v21, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->fileLength:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->readStreamAsBytesArray(Ljava/io/InputStream;I)[B

    move-result-object v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    invoke-static {v12}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->access$000(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v20

    check-cast v20, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->partETags:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    move-wide/from16 v22, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->currentUploadLength:J

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->abortThisResumableUpload()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->throwOutInterruptClientException()V

    goto/16 :goto_3

    :cond_7
    new-instance v8, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->partETags:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackVars(Ljava/util/Map;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->access$000(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v9

    check-cast v9, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_a
    new-instance v21, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    return-object v21
.end method

.method private initUploadId()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-static {v13}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[initUploadId] - Found record file, uploadid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    new-instance v8, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->access$000(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v12

    :try_start_0
    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v14

    check-cast v14, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->partETags:Ljava/util/List;

    new-instance v16, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v17

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v14

    const/16 v15, 0x194

    if-ne v14, v15, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v14, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t create file at path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nPlease make sure the directory exist!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    throw v4

    :catch_1
    move-exception v4

    throw v4

    :cond_2
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v15}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->this$0:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v14}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->access$000(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v7

    check-cast v7, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    if-eqz v14, :cond_3

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/FileWriter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->recordFile:Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->uploadId:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    return-void
.end method

.method private throwOutInterruptClientException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public call()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->initUploadId()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v3, v4, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v3, v4, v5, v0}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->request:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v3, v4, v2, v5}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_2
    throw v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->call()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object v0

    return-object v0
.end method
