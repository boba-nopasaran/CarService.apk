.class public Lcom/tencent/wecarspeech/sdk/TASRadioManager;
.super Ljava/lang/Object;
.source "TASRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASRadioManager;


# instance fields
.field private mIRadioClient:Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->addICallbackListener(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/sdk/TASRadioManager;)Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->mIRadioClient:Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASRadioManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASRadioManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASRadioManager;

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
.method public setRadioClient(Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setRadioClient"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->mIRadioClient:Lcom/tencent/wecarspeech/sdk/TASRadioManager$IRadioClient;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.radio.set.enabled"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASRadioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-setRadioClient"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ":null"

    goto :goto_0

    :cond_1
    const-string v0, ":null"

    goto :goto_1
.end method
