.class public Lcom/tencent/wecarspeech/sdk/TASAsrManager;
.super Ljava/lang/Object;
.source "TASAsrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;,
        Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;,
        Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;,
        Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASAsrManager;


# instance fields
.field private mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandSemanticsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableWakeup:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mCommandSemanticsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mCommandSemanticsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommandInner(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/wecarspeech/sdk/TASAsrManager;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mEnableWakeup:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startWakeupAsrSceneInner(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->handlerJsonResultCallback(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->handlerRegCommandCallback(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/wecarspeech/sdk/TASAsrManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->handlerSceneWakeupAsrCallback(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlerJsonResultCallback(Ljava/lang/String;[B)[B
    .locals 9

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v7, "handlerJsonResultCallback"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v7, "handlerJsonResultCallback return, mAsrJsonResultListenerList is empty"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+onAsrjson:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", listener count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;->onAsrJsonResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "e_asr_feedback"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlerJsonResultCallback, feedback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-onAsrjson:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handlerRegCommandCallback(Ljava/lang/String;[B)[B
    .locals 10

    const/4 v9, 0x0

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v6, "handlerRegCommandCallback"

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v6, "handlerRegCommandCallback return, mAsrCommandListenerList is empty"

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v9

    :cond_1
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "e_command"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "e_semantics_tag"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+onAsrCommand, regCommand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,semanticsTag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;->onAsrCommand(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-onAsrCommand, regCommand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,semanticsTag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlerSceneWakeupAsrCallback(Ljava/lang/String;[B)[B
    .locals 10

    const/4 v9, 0x0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v7, "handlerSceneWakeupAsrCallback"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "e_scene_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "e_wakeup_keyword"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "e_wakeup_semantics_tag"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v7, "handlerSceneWakeupAsrCallback return, param is invalid"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    invoke-virtual {v6}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getISceneWakeupAsrListener()Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+onWakeupAsr, keyword:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", semanticsTag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    invoke-virtual {v6}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getISceneWakeupAsrListener()Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;->onWakeupAsr(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-onWakeupAsr, keyword:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", semanticsTag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private registerCommandInner(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "registerCommandReconnect params is invalid"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "+registerCommandInner"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "e_command"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "e_semantics_tag"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v4

    const-string v5, "tas.action.asr.reg.command"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "-registerCommandInner"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startWakeupAsrSceneInner(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v8, "startWakeupAsrScene return, param \'sceneId\' is invalid"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getWakeupKeywordsTagMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v8, "startWakeupAsrScene return, param is \'keyword\' invalid"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getSceneId()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getWakeupKeywordsTagMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "e_scene_id"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "e_wakeup_keyword"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "e_wakeup_semantics_tag"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v7

    const-string v8, "tas.action.asr.wakeup.scene.start"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v7, "e_wakeup_keyword_semantics_tag"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public addIAsrCommandListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+addIAsrCommandListener, listener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-addIAsrCommandListener, listener:"

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

.method public addIAsrJsonResultListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+addIAsrJsonResultListener, listener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-addIAsrJsonResultListener, listener:"

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

.method public enableAsr(Z)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+enableAsr, enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "e_asr_enable"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.asr.enable"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-enableAsr, enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableWakeup(Z)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+enableWakeup, enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mEnableWakeup:Ljava/lang/Boolean;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "e_wakeup_enable"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.asr.wakeup.enable"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-enableWakeup, enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v3, "registerCommandInner params is invalid"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+registerCommand, semanticsTAg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mCommandSemanticsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommandInner(Ljava/util/concurrent/ConcurrentHashMap;)V

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-registerCommand, semanticsTAg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeIAsrCommandListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+removeIAsrCommandListener, listener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrCommandListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-removeIAsrCommandListener, listener:"

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

.method public removeIAsrJsonResultListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrJsonResultListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+removeIAsrJsonResultListener, listener:"

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

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mAsrJsonResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-removeIAsrJsonResultListener, listener:"

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

.method public startASR()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startASR(Ljava/lang/String;)V

    return-void
.end method

.method public startASR(Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+startASR, ttsTips:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "e_asr_tts_tips"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.asr.start"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-startASR, ttsTips:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startWakeupAsrScene(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V
    .locals 4

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+startWakeupAsrScene(), sceneWakeupAsrTool:"

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

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startWakeupAsrSceneInner(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-startWakeupAsrScene(), sceneWakeupAsrTool:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".mSceneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".mSceneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public stopASR()V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v1, "+stopASR"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.asr.stop"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v1, "-stopASR"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopWakeupAsrScene(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v4, "stopWakeupAsrScene return, param is invalid"

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mSceneWakeupAsrToolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "e_scene_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v3

    const-string v4, "tas.action.asr.wakeup.scene.stop"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unRegisterCommand(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "unRegisterCommand params is invalid"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "+unRegisterCommand"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->mCommandSemanticsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "e_command"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v4

    const-string v5, "tas.action.asr.unreg.command"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    const-string v5, "-unRegisterCommand"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
