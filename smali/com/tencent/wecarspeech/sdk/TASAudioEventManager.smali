.class public Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;
.super Ljava/lang/Object;
.source "TASAudioEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;


# instance fields
.field private mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->handlerAudioEventFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlerAudioEventFocus(Ljava/lang/String;[B)[B
    .locals 12

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+handlerAutioEventFocus(Caller:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ,data:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_0

    const-string v8, "null"

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v8, 0x0

    :goto_1
    return-object v8

    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "e_audio_event"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v8, 0xb

    if-ne v0, v8, :cond_2

    const-string v8, "e_audio_focus_abandon_restore_flag"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_2
    :goto_2
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v9, "handlerAudioEventFocus return, audioEvent == -1"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handlerAudioEventFocus, audioEvent == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onAsrStartTipBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrStartTipBegin()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onAsrStartTipBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v3

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onAsrStartTipEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrStartTipEnd()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onAsrStartTipEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onAsrBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrBegin()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onAsrBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onAsrEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAsrEnd()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onAsrEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onTtsBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onTtsBegin()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onTtsBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onTtsEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onTtsEnd()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onTtsEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onMusicPlay"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onMusicPlay()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onMusicPlay"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onMusicPause"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onMusicPause()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onMusicPause"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onCallBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onCallBegin()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onCallBegin"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_9
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onCallEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onCallEnd()V

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onCallEnd"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_a
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==+onRequestAudioFocus"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onRequestAudioFocus()I

    move-result v7

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    const-string v10, "==-onRequestAudioFocus"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_b
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==+onAbandonAudioFocus restore = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;->onAbandonAudioFocus(Z)I

    move-result v7

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==-onAbandonAudioFocus restore = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v8, "tas.action.ret.value"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

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

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto/16 :goto_1

    :catch_1
    move-exception v2

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-handlerAutioEventFocus(Caller:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ,data:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_6

    const-string v8, "null"

    :goto_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addIAudioEventListener(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+addIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-addIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "ok"

    goto :goto_0

    :cond_2
    const-string v0, "ok"

    goto :goto_1
.end method

.method public removeIAudioEventListener(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+removeIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->mAudioEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-removeIAudioEventListener, audioEventListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "ok"

    goto :goto_0

    :cond_2
    const-string v0, "ok"

    goto :goto_1
.end method
