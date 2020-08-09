.class Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;
.super Ljava/lang/Object;
.source "TASIflytekManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASIflytekManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    const-string v0, "tas.focus.iflytek.event"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;Ljava/lang/String;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.iflytek.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
