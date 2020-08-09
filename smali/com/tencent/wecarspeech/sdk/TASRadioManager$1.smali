.class Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;
.super Ljava/lang/Object;
.source "TASRadioManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASRadioManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 11

    const/4 v8, 0x0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+callback, caller:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,caller back:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,data:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_0

    const-string v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "tas.focus.radio"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-callback, caller:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,caller back:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,data:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_1

    const-string v7, "null"

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    :goto_2
    return-object v7

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v9, "handlerRadioFocus return, mIRadioClient == null"

    invoke-static {v7, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-callback, caller:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,caller back:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ,data:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_3

    const-string v7, "null"

    :goto_3
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_5

    array-length v7, p3

    if-lez v7, :cond_5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "e_radio_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "e_radio_code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_5
    :goto_4
    const-string v7, "tas.focus.radio.play.fm"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+playFMChannel(radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playFMChannel(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-playFMChannel(radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "tas.action.ret.value"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-callback, caller:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ,caller back:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ,data:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p3, :cond_12

    const-string v7, "null"

    :goto_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handlerRadioFocus return, radioCode == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v7, "tas.focus.radio.play.am"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+playAMChannel(radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playAMChannel(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-playAMChannel(radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handlerRadioFocus return, radioCode == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const-string v7, "tas.focus.radio.play.channel"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-nez v4, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+playChannel(radioChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-playChannel(radioChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", radioCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handlerRadioFocus return, radioChannel == null and radioCode == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const-string v7, "tas.focus.radio.play"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==+playRadio()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playRadio()Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==-playRadio()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string v7, "tas.focus.radio.pause"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==+pauseRadio()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->pauseRadio()Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==-pauseRadio()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v7, "tas.focus.radio.play.prev"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==+playPrevChannel()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playPrevChannel()Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==-playPrevChannel()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string v7, "tas.focus.radio.play.next"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==+playNextChannel()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->playNextChannel()Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==-playNextChannel()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const-string v7, "tas.focus.radio.start.scan"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==+startAutoScan()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;->startAutoScan()Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "==-startAutoScan()"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_7
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.radio.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->access$000()Ljava/lang/String;

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
