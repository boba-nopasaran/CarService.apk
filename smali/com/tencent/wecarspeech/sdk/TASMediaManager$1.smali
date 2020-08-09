.class Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;
.super Ljava/lang/Object;
.source "TASMediaManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASMediaManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+callback, caller:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,caller back:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,data:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "tas.focus.video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-callback mIVideoClient == null"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v6

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-callback mIMediaControlClient == null"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "e_app_pkg_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_3
    :goto_2
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_3
    packed-switch v3, :pswitch_data_0

    :goto_4
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-callback, caller:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,caller back:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,data:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_5

    const-string v3, "null"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_0
    const-string v4, "tas.focus.video.play"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_1
    const-string v4, "tas.focus.video.play.usb"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_2
    const-string v4, "tas.focus.media.control.play"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    goto :goto_3

    :sswitch_3
    const-string v4, "tas.focus.media.control.pause"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_4
    const-string v4, "tas.focus.media.control.next"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_5
    const-string v4, "tas.focus.media.control.pre"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_6
    const-string v4, "tas.focus.media.control.current.info"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x6

    goto/16 :goto_3

    :sswitch_7
    const-string v4, "tas.focus.media.control.get.play.status"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x7

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+playVideo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;->playVideo()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-playVideo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+playUSBVideo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;->playUSBVideo()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-playUSBVideo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+play"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->play(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-play"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+pause"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->pause(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-pause"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+next"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->next(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-next"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+pre"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->pre(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-pre"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+getCurrentPlayInfo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->getCurrentPlayInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-getCurrentPlayInfo"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==+getPlayStatus"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;->getPlayStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "==-getPlayStatus"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dee8f05 -> :sswitch_1
        -0x4d62431b -> :sswitch_0
        -0x98f2225 -> :sswitch_7
        0x1b7c45aa -> :sswitch_5
        0x2d7a133d -> :sswitch_3
        0x540b58cc -> :sswitch_4
        0x540c590d -> :sswitch_2
        0x5c9348dc -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IVideoClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.video.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->setMediaControlClient(Lcom/tencent/wecarspeech/sdk/TASMediaManager$IMediaControlClient;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$400(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$400(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->notifyPlayStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0, v3}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$402(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$600(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$500(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$600(Lcom/tencent/wecarspeech/sdk/TASMediaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->notifyMediaPlayInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0, v4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$602(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-static {v0, v4}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$502(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$000()Ljava/lang/String;

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
