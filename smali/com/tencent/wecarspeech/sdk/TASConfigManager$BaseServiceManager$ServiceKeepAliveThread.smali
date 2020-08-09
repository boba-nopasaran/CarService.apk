.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;
.super Ljava/lang/Thread;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceKeepAliveThread"
.end annotation


# instance fields
.field public mIsRunning:Z

.field final synthetic this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK ServiceKeepAliveThread start Success, mIsRunning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->mIsRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->mIsRunning:Z

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop SDK ServiceKeepAliveThread"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
