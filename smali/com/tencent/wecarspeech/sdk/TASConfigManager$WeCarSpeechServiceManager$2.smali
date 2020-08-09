.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;
.super Ljava/lang/Object;
.source "TASConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->setWeCarSpeechSdkListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

.field final synthetic val$listener:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->val$listener:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->access$1000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->access$1000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->val$listener:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

    invoke-interface {v1, v2}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;->setWeCarSpeechSdkListener(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->access$1100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setWeCarSpeechSdkListener OK"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->access$1100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setWeCarSpeechSdkListener error"

    invoke-static {v1, v2, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->access$1100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWeCarSpeechSdkService() is null, postDelayed retry"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    iget-object v1, v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
