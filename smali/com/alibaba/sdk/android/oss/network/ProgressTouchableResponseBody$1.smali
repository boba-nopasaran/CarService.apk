.class Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;
.super Lokio/ForwardingSource;
.source "ProgressTouchableResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

.field private totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;Lokio/Source;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v8, -0x1

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    move-wide v0, v6

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$100(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$200(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_0
    return-wide v6

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method
