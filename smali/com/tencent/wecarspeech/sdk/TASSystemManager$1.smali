.class Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;
.super Ljava/lang/Object;
.source "TASSystemManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASSystemManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback, caller:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tas.focus.sys.volume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$700(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "tas.focus.sys.screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$800(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "tas.focus.sys.wireless.wifi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$900(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "tas.focus.sys.wireless.mobile.network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$1000(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "tas.focus.sys.wireless.bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$1100(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "tas.focus.sys.thirdapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$1200(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "tas.focus.sys.toggle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$1300(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v0, "tas.focus.sys.help"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$1400(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$000()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.volume.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.screen.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.wireless.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$400(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.thirdapp.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.system.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_4
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$600(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->uploadThirdAppList(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->access$000()Ljava/lang/String;

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
