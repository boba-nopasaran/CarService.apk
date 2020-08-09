.class public Lcom/tencent/wecarspeech/sdk/TASIflytekManager;
.super Ljava/lang/Object;
.source "TASIflytekManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IflytekModeConstant;,
        Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;


# instance fields
.field private mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;)Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/sdk/TASIflytekManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->handlerIflytekModeEventFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASIflytekManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlerIflytekModeEventFocus(Ljava/lang/String;[B)[B
    .locals 13

    const/4 v9, 0x0

    const/4 v12, -0x1

    sget-object v10, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+handlerIflytekModeEventFocus(Caller:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ,data:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez p2, :cond_0

    const-string v8, "null"

    :goto_0
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    move-object v8, v9

    :goto_1
    return-object v8

    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    if-nez v8, :cond_2

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "-callback mIIflytekModeClient == null"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v3, -0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "e_iflytek_event"

    const/4 v10, -0x1

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "e_iflytek_mode_value"

    const/4 v10, -0x1

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "e_iflytek_gain_value"

    const/4 v10, -0x1

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_2
    if-ne v4, v12, :cond_3

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "handlerIflytekModeEventFocus return, audioEvent == -1"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlerIflytekModeEventFocus, audioEvent == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v4, :pswitch_data_0

    :goto_3
    if-eq v7, v12, :cond_6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v8, "tas.action.ret.value"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,resut:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto/16 :goto_1

    :catch_0
    move-exception v2

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==+switchIFlyTekRecordMode, mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v6, v12, :cond_4

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {v8, v6}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->switchIFlyTekRecordMode(I)V

    :cond_4
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "==-switchIFlyTekRecordMode"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==+setIFlyTekMicGain, gain="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v12, :cond_5

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {v8, v3}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->setIFlyTekMicGain(I)V

    :cond_5
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "==-setIFlyTekMicGain"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "==+getIFlyTekRecordMode"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {v8}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->getIFlyTekRecordMode()I

    move-result v7

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==-getIFlyTekRecordMode, mode_ret:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    const-string v10, "==+getIFlyTekMicGain"

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-interface {v8}, Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;->getIFlyTekMicGain()I

    move-result v7

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==-getIFlyTekMicGain, gain_ret:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    sget-object v10, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ,data:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez p2, :cond_7

    const-string v8, "null"

    :goto_5
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    goto/16 :goto_1

    :cond_7
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setIIflytekModeClient(Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setIIflytekModeClient, videoClient:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;->mIIflytekModeClient:Lcom/tencent/wecarspeech/sdk/TASIflytekManager$IIflytekModeClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.iflytek.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    return-void

    :cond_0
    const-string v0, "ok"

    goto :goto_0
.end method
