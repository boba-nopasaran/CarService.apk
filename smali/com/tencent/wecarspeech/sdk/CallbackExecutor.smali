.class Lcom/tencent/wecarspeech/sdk/CallbackExecutor;
.super Ljava/lang/Object;
.source "CallbackExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/CallbackExecutor;


# instance fields
.field private mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;",
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

    const-class v1, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handlerCallback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk handler Callback caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "tas.focus.audio.event"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    :cond_0
    :goto_0
    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;->callback(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    sget-object v2, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on callback result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    const-string v2, "tas.callback.asr"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto :goto_0

    :cond_2
    const-string v2, "tas.focus.sys"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto :goto_0

    :cond_3
    const-string v2, "tas.focus.tel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASTelManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto :goto_0

    :cond_4
    const-string v2, "tas.focus.radio"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto :goto_0

    :cond_5
    const-string v2, "tas.focus.music"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto/16 :goto_0

    :cond_6
    const-string v2, "tas.focus.video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto/16 :goto_0

    :cond_7
    const-string v2, "tas.focus.media.control"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto/16 :goto_0

    :cond_8
    const-string v2, "tas.focus.iflytek.event"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Lcom/tencent/wecarspeech/sdk/TASIflytekManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->TAG:Ljava/lang/String;

    const-string v3, "no callback listener found!"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public handlerServiceConnect(Z)V
    .locals 4

    sget-object v1, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerServiceConnect connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->mICallbackListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;->onSdkServiceConnectEvent(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
