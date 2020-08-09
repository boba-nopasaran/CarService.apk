.class public Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;
.super Ljava/lang/Object;
.source "TASLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASLifecycleManager$PowerEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final WECAR_SPEECH_SERVICE:Ljava/lang/String; = "com.tencent.wecarspeech.service.SR_SERVICE"

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

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
.method public destroyTASSpeech()V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "+destroyTASSpeech"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.lifecycle.destroy.tas"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.wecarspeech.service.SR_SERVICE"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "-destroyTASSpeech"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initialzeTASSpeech(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "+initialzeTASSpeech"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.lifecycle.init.tas"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    const-string v0, "com.tencent.wecarspeech.service.SR_SERVICE"

    invoke-static {p1, v0}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->startService(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "-initialzeTASSpeech"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyBackCarStatus(Z)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+notifyBackCarStatus, backCar:"

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
    const-string v2, "e_back_car_status"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.lifecycle.backcar.event"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-notifyBackCarStatus, backCar:"

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

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyPowerEvent(I)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+notifyPowerEvent, event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "e_power_event_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.lifecycle.power.event"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-notifyPowerEvent, event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
