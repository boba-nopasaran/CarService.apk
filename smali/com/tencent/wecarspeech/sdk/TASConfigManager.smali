.class public Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.super Ljava/lang/Object;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;,
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;,
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;,
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASConfigManager;


# instance fields
.field private isInited:Z

.field private mContext:Landroid/content/Context;

.field private mTASInitListener:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

.field private mTASInitParam:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;

.field private mWeCarSpeechServiceManager:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->isInited:Z

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mTASInitParam:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/wecarspeech/sdk/TASConfigManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->setTasInitParams(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mTASInitListener:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASConfigManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setLogUtilsTraceSwitch()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wecarspeech_log_on/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->enableTraceLog:Z

    :cond_0
    return-void
.end method

.method private setTasInitParams(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)V
    .locals 8

    if-nez p1, :cond_0

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    const-string v6, "setTasInitParams return, mTASInitParam == null"

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+setTasInitParams, appid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appToken:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceUniqueID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", storageRootPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "e_app_id"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "e_app_token"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v5, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "e_package_name"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "e_device_id"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "e_storage_path"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v5, "e_sdk_version"

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "e_float_btn_enabled"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$400(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v5

    const-string v6, "tas.action.config.init"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v5, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-setTasInitParams, appid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appToken:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceUniqueID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", storageRootPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v5, "e_wakeup_words"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "e_custom_wake_word_threshold"

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->access$600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.2"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;)V

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->setLogUtilsTraceSwitch()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+init(), param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mTASInitListener:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mTASInitParam:Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mWeCarSpeechServiceManager:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mWeCarSpeechServiceManager:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->mWeCarSpeechServiceManager:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->setLogUtilsTraceSwitch()V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-init(), param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->isInited:Z

    return v0
.end method

.method public setFloatBtnHidden(Z)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+setFloatBtnHidden, hidden:"

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
    const-string v2, "e_float_btn_hidden"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.config.set.float.btn.hidden"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-setFloatBtnHidden, hidden:"

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

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLogEnable(Z)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+setLogEnable, enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->setOpenLog(Z)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "e_log_enabled"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.config.set.log.enabled"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-setLogEnable, enable:"

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

    sget-object v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWakeupKeywords(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+setWakeupKeywords, wakeupKeywords:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.config.clear.wakeup.words"

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "ok"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v2

    const-string v3, "tas.action.config.set.wakeup.words"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v3, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-setWakeupKeywords, wakeupKeywords:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_4

    const-string v2, "null"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v2, "ok"

    goto :goto_2
.end method
