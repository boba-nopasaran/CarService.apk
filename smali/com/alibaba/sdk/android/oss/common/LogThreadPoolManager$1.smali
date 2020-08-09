.class Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;
.super Ljava/lang/Object;
.source "LogThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;->this$0:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-void
.end method
