.class Lcom/tencent/wecarspeech/sdk/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/ActionExecutor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWeCarSpeechSdkService:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->sInstance:Lcom/tencent/wecarspeech/sdk/ActionExecutor;

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
.method public action(Ljava/lang/String;[B)[B
    .locals 4

    sget-object v2, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk dispatch action:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " data:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->mWeCarSpeechSdkService:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->mWeCarSpeechSdkService:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;->actionCall(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handlerSdkServiceStateChange(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+handlerSdkServiceStateChange(), service:"

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

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->mWeCarSpeechSdkService:Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    sget-object v1, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-handlerSdkServiceStateChange(), service:"

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

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->mContext:Landroid/content/Context;

    return-void
.end method
