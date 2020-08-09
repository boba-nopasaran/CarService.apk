.class Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;
.super Ljava/lang/Object;
.source "TASAsrManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASAsrManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    const-string v0, "tas.callback.asr.result.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$600(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tas.callback.asr.reg.command"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$700(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "tas.callback.asr.wakeup.scene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$800(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-static {v2, v0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
