.class Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;
.super Ljava/lang/Object;
.source "ExtensionRequestOperation.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;

.field final synthetic val$progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->this$1:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->val$progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->val$progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->val$progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->this$1:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->access$100(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->this$1:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->access$200(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->this$1:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;->access$300(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$ResumableUploadTask$1;->onProgress(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;JJ)V

    return-void
.end method
