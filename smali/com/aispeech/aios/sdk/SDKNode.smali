.class public final Lcom/aispeech/aios/sdk/SDKNode;
.super Lcom/aispeech/aios/BaseNode;
.source "SDKNode.java"


# static fields
.field private static final SEND_TO_MAIN_THREAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SDKNode"

.field private static mInstance:Lcom/aispeech/aios/sdk/SDKNode;


# instance fields
.field private aiosManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aispeech/aios/common/manage/AIOSManager;",
            ">;"
        }
    .end annotation
.end field

.field private initializeTimes:I

.field private isAIOSReady:Z

.field private mAiosState:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private reinitializeTimes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;-><init>()V

    iput v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->initializeTimes:I

    iput v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->reinitializeTimes:I

    iput-boolean v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->isAIOSReady:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->mAiosState:Ljava/lang/String;

    new-instance v0, Lcom/aispeech/aios/sdk/SDKNode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aispeech/aios/sdk/SDKNode$1;-><init>(Lcom/aispeech/aios/sdk/SDKNode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.customize"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.map"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.music"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.other"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSOtherManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSOtherManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.phone"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.setting"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.status"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.system"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.radio"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSRadioManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSRadioManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.audio"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSAudioManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSAudioManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.ui"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSUIManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.fm"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSFmManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    const-string v1, "sdk.data"

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSDataManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->mAiosState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/aispeech/aios/sdk/SDKNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/SDKNode;->mAiosState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/aispeech/aios/sdk/SDKNode;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->obtainLogLevel()V

    return-void
.end method

.method static synthetic access$200(Lcom/aispeech/aios/sdk/SDKNode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->isAIOSReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/aispeech/aios/sdk/SDKNode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/sdk/SDKNode;->isAIOSReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/aispeech/aios/sdk/SDKNode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->reinitializeSDK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/aispeech/aios/sdk/SDKNode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->initializeSDK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->aiosManagerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aispeech/aios/sdk/SDKNode;)Lcom/aispeech/aios/BusClient;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aispeech/aios/sdk/SDKNode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->isAiosPrepared()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/aispeech/aios/sdk/SDKNode;)Lcom/aispeech/aios/BusClient;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->obtainAIOSState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/SDKNode;
    .locals 2

    const-class v1, Lcom/aispeech/aios/sdk/SDKNode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/SDKNode;->mInstance:Lcom/aispeech/aios/sdk/SDKNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/SDKNode;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/SDKNode;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/SDKNode;->mInstance:Lcom/aispeech/aios/sdk/SDKNode;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/SDKNode;->mInstance:Lcom/aispeech/aios/sdk/SDKNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializeSDK()Z
    .locals 6

    const-string v2, "SDKNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SDKNode#initializeSDK()]Times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aispeech/aios/sdk/SDKNode;->initializeTimes:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/aispeech/aios/sdk/SDKNode;->initializeTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->onAIOSInitialize()V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getReadyListener()Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->isAiosPrepared()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SDKNode"

    const-string v3, "AIOSReadyListener is implemented, call onAIOSReady()."

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;->onAIOSReady()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getPhoneListener()Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;->getBTStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->setBTStatus(Z)V

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const-string v2, "SDKNode"

    const-string v3, "AIOSReadyListener is null!!!"

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAiosPrepared()Z
    .locals 7

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v4, "/bus/nodes"

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v3, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SDKNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDKNode#isAiosPrepared()]nodes:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    const-string v6, ",\n"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v4, "/system/adapter/ready"

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v3, :cond_0

    const-string v3, "SDKNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/adapter/ready result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private obtainAIOSState()Ljava/lang/String;
    .locals 8

    const-string v2, "unknown"

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v4, "/bus/nodes"

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v4, "/keys/aios/state"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "get"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ready"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "asleep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "awake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method private obtainLogLevel()V
    .locals 8

    iget-object v3, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v4, "/keys/aios/log/level"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "get"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-nez v3, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    :goto_0
    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "SDKNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log.level ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nil"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/aispeech/ailog/AILog;->setLogLevel(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private reinitializeSDK()Z
    .locals 6

    const-string v2, "SDKNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SDKNode#reinitializeSDK()]Times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aispeech/aios/sdk/SDKNode;->reinitializeTimes:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/aispeech/aios/sdk/SDKNode;->reinitializeTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->onAIOSInitialize()V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getReadyListener()Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/SDKNode;->isAiosPrepared()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SDKNode"

    const-string v3, "AIOSReadyListener is implemented, call onAIOSRebooted()."

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;->onAIOSRebooted()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getPhoneListener()Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;->getBTStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->setBTStatus(Z)V

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const-string v2, "SDKNode"

    const-string v3, "AIOSReadyListener is null!!!"

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs call(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nil"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAIOSState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->mAiosState:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getSimplePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs onCall(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 4

    const-string v2, "SDKNode"

    invoke-static {v2, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[[B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdk"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/aispeech/aios/sdk/utils/StringUtil;->getEncodedString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "/sdk/map"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->handleCall(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onJoin()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/aispeech/aios/BaseNode;->onJoin()V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "kernel.ready"

    aput-object v2, v1, v3

    const-string v2, "data.sync.state"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "keys.aios.state"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "keys.aios.log.level"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    new-instance v1, Lcom/aispeech/aios/sdk/SDKNode$2;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/sdk/SDKNode$2;-><init>(Lcom/aispeech/aios/sdk/SDKNode;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    :goto_0
    return-void

    :cond_0
    const-string v0, "SDKNode"

    const-string v1, "SDKNode bus client is null!!!"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/SDKNode;->bc:Lcom/aispeech/aios/BusClient;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "adapter.nodes.ready"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs onMessage(Ljava/lang/String;[[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/aispeech/aios/BaseNode;->onMessage(Ljava/lang/String;[[B)V

    const-string v4, "SDKNode"

    invoke-static {v4, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[[B)V

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "topic"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, p2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    aget-object v4, p2, v1

    invoke-static {v4}, Lcom/aispeech/aios/sdk/utils/StringUtil;->getEncodedString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "bytes"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public publish(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/BusClient;->publish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs publish(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/aios/BusClient;->publish(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
