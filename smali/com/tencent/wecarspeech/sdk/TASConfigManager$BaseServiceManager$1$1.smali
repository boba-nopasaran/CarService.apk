.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;
.super Ljava/lang/Object;
.source "TASConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v3, v3, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1700(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent inner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent is null, retry startService, bind"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v2, v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1800(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1$1;->this$2:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mContext.startService, bind in handler"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
