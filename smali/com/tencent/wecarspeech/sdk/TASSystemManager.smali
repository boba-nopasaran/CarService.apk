.class public Lcom/tencent/wecarspeech/sdk/TASSystemManager;
.super Ljava/lang/Object;
.source "TASSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;,
        Lcom/tencent/wecarspeech/sdk/TASSystemManager$VolumeChannel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASSystemManager;


# instance fields
.field private mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

.field private mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

.field private mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

.field private mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

.field private mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

.field private mThirdAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;",
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

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysMobileNetworkFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysBtFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysThirdAppFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysToggleFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysHelpFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/wecarspeech/sdk/TASSystemManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysVolumeFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysScreenFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/wecarspeech/sdk/TASSystemManager;Ljava/lang/String;[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->handlerSysWifiFocus(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASSystemManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlerSysBtFocus(Ljava/lang/String;[B)[B
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    if-nez v7, :cond_1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "handlerSysBtFocus return, mIWirelessClient == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-eqz p2, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "+handlerSysBtFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "e_wireless_open_close"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+enableBluetooth("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {v6, v4}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableBluetooth(Z)I

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-enableBluetooth("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v6, "tas.action.ret.value"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "-handlerSysBtFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handlerSysHelpFocus(Ljava/lang/String;[B)[B
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    if-nez v8, :cond_1

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "handlerSysHelpFocus return, mISystemClient == null"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eqz p2, :cond_0

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "+handlerSysHelpFocus"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "e_help_domain"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "e_help_action"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "==+openGlobalHelp"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {v7}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->openGlobalHelp()Z

    move-result v6

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "==-openGlobalHelp"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "tas.action.ret.value"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "-handlerSysHelpFocus"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+openDomainHelp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {v7, v2, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->openDomainHelp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-openDomainHelp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v3

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handlerSysMobileNetworkFocus(Ljava/lang/String;[B)[B
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    if-nez v7, :cond_1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "handlerSysMobileNetworkFocus return, mIWirelessClient == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-eqz p2, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "+handlerSysMobileNetworkFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "e_wireless_open_close"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+enableMobileNetwork("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {v6, v4}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableMobileNetwork(Z)I

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-enableMobileNetwork("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v6, "tas.action.ret.value"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "-handlerSysMobileNetworkFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handlerSysScreenFocus(Ljava/lang/String;[B)[B
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    if-nez v7, :cond_1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "handlerSysScreenFocus return, mIScreenClient == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-eqz p2, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "+handlerSysScreenFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "e_volume"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    packed-switch v4, :pswitch_data_0

    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v6, "tas.action.ret.value"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "-handlerSysScreenFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+incBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->incBrightness()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-incBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+decBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->decBrightness()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-decBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+maxBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->maxBrightness()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-maxBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+minBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->minBrightness()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-minBrightness()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+muteScreen()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->muteScreen()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-muteScreen()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==+wakeScreen()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-interface {v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;->wakeScreen()Z

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "==-wakeScreen()"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handlerSysThirdAppFocus(Ljava/lang/String;[B)[B
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    if-nez v8, :cond_1

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "handlerSysThirdAppFocus return, mThirdAppClient == null"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eqz p2, :cond_0

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "+handlerSysThirdAppFocus"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "e_thirdapp_open_close"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v8, "e_thirdapp_pkg_name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_2

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+openApp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-interface {v7, v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;->openApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-openApp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "tas.action.ret.value"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlerSysThirdAppFocus, feedback:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+closeApp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-interface {v7, v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;->closeApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-closeApp("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "-handlerSysThirdAppFocus, feedback = null"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlerSysToggleFocus(Ljava/lang/String;[B)[B
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    if-nez v8, :cond_1

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "handlerSysToggleFocus return, mISystemClient == null"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eqz p2, :cond_0

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "+handlerSysToggleFocus"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "e_toggle_open_close"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "e_toggle_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==+toggleAction("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-interface {v7, v4, v6}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;->toggleAction(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==-toggleAction("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "tas.action.ret.value"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlerSysToggleFocus, feedback:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handlerSysVolumeFocus(Ljava/lang/String;[B)[B
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    if-nez v9, :cond_1

    sget-object v9, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v10, "handlerSystemVolumeFocus return, mIVolumeClient == null"

    invoke-static {v9, v10}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    if-eqz p2, :cond_0

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "+handlerSysVolumeFocus"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "e_volume"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v8, "e_volume_channel"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v8, "e_volume_value"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    packed-switch v5, :pswitch_data_0

    :goto_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v8, "tas.action.ret.value"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v9, "-handlerSysVolumeFocus"

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+muteVolume(true, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    const/4 v9, 0x1

    invoke-interface {v8, v9, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->muteVolume(ZI)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-muteVolume(true, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+muteVolume(false, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->muteVolume(ZI)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-muteVolume(false, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+incVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {v8, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->incVolume(I)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-incVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+decVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {v8, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->decVolume(I)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-decVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+maxVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {v8, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->maxVolume(I)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-maxVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+minVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {v8, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->minVolume(I)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-minVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==+setVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-interface {v8, v7, v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;->setVolume(II)I

    move-result v6

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==-setVolume("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    sget-object v8, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private handlerSysWifiFocus(Ljava/lang/String;[B)[B
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    if-nez v7, :cond_1

    sget-object v7, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v8, "handlerSysWifiFocus return, mIWirelessClient == null"

    invoke-static {v7, v8}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-eqz p2, :cond_0

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "+handlerSysWifiFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "e_wireless_open_close"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==+enableWifi("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-interface {v6, v4}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;->enableWifi(Z)I

    move-result v5

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==-enableWifi("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v6, "tas.action.ret.value"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v7, "-handlerSysWifiFocus"

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public isSpeechForground()Z
    .locals 7

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v5, "+isSpeechForground"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v4

    const-string v5, "tas.action.sys.is.foreground"

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v5, "-isSpeechForground"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "e_app_foreground_status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openHelpPage()V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v1, "+openSRHelpPage"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.open.help.page"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v1, "-openSRHelpPage"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenClient iScreenClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIScreenClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.screen.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    return-void
.end method

.method public setSystemClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setSystemClient, client:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mISystemClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ISystemClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.system.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-setSystemClient, client:"

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
    const-string v0, "ok"

    goto :goto_0

    :cond_1
    const-string v0, "ok"

    goto :goto_1
.end method

.method public setThirdAppClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setThirdAppClient, client:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdAppClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.thirdapp.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-setThirdAppClient, client:"

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
    const-string v0, "ok"

    goto :goto_0

    :cond_1
    const-string v0, "ok"

    goto :goto_1
.end method

.method public setVolumeClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeClient iVolumeClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIVolumeClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.volume.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    return-void
.end method

.method public setWirelessClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWirelessClient iWirelessClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mIWirelessClient:Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.sys.wireless.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    return-void
.end method

.method public uploadThirdAppList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v5, "uploadThirdAppList return, appList == null"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->mThirdAppList:Ljava/util/ArrayList;

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v5, "+uploadThirdAppList"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "e_app_name"

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "e_app_pkg_name"

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v4

    const-string v5, "tas.action.sys.thirdapp.upload"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v4, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->TAG:Ljava/lang/String;

    const-string v5, "-uploadThirdAppList"

    invoke-static {v4, v5}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
