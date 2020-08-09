.class Lcom/tencent/wecarspeech/sdk/TASTelManager$1;
.super Ljava/lang/Object;
.source "TASTelManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASTelManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASTelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "callback return, mITelClient == null"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+callback, caller:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", callback:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", data:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tas.focus.tel.call"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$600(Lcom/tencent/wecarspeech/sdk/TASTelManager;Ljava/lang/String;[B)[B

    :cond_1
    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-callback, caller:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", callback:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", data:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_a

    const-string v0, "null"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_3
    const-string v0, "tas.focus.tel.answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==+answerInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;->answerInComingCall()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==-answerInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "tas.focus.tel.refuse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==+refuseInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;->refuseInComingCall()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==-refuseInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "tas.focus.tel.ignore"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==+ignoreInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;->ignoreInComingCall()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==-ignoreInComingCall()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "tas.focus.tel.get.status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-callback, caller:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_7

    const-string v0, "null"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$700(Lcom/tencent/wecarspeech/sdk/TASTelManager;Ljava/lang/String;[B)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4

    :cond_8
    const-string v0, "tas.focus.tel.view.phonebook"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==+viewPhonebook()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;->viewPhonebook()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "==-viewPhonebook()"

    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "tas.focus.tel.view.callrecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0, p3}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$800(Lcom/tencent/wecarspeech/sdk/TASTelManager;[B)[B

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_3
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+uploadThirdAppList, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.tel.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->setIncomingCallStrategy(ZZ)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$400(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->notifyBluetoothStatus(Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASTelManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->uploadTelContacts(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-uploadThirdAppList, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
