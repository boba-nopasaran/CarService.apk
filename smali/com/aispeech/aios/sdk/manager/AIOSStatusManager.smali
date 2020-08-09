.class public final Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSStatusManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSStatusManager"

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;


# instance fields
.field private statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatusListener()Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    return-object v0
.end method

.method public handleCall(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AIOSStatusManager"

    invoke-static {v1, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    if-nez v1, :cond_0

    const-string v1, "AIOSStatusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,statusListener is null !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "AIOSStatusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ttimestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk.status.vad.volume.change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p2, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    invoke-interface {v1, v0}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onVadVolumeChange(F)V

    :cond_1
    :goto_1
    const-string v1, "AIOSStatusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback done\ttimestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "sdk.status.listen.change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onListeningChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "sdk.status.recognition.change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onRecognitionChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "sdk.status.context.input.text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onContextInput(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "sdk.status.context.output.text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onContextOutput(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "keys.aios.state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onAIOSStatusChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "player.tts.state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onPlayerStatusChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "recorder.state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;->onRecorderStatusChange(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected isNonNull(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSubscribe()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.status.listen.change"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.status.recognition.change"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.status.vad.volume.change"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.status.context.input.text"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.status.context.output.text"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "player.tts.state"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "recorder.state"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnsubscribe()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.status.listen.change"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.status.recognition.change"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.status.vad.volume.change"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.status.context.input.text"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.status.context.output.text"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "player.tts.state"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "recorder.state"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerStatusListener(Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;)V
    .locals 5
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSStatusManager#registerStatusListener()] with: listener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.app.binding"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getSimplePackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "status"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    return-void
.end method

.method public unregisterStatusListener()V
    .locals 5

    const-string v0, "AIOSStatusManager"

    const-string v1, "[AIOSStatusManager#unregisterStatusListener()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.app.unbinding"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getSimplePackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "status"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->statusListener:Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;

    return-void
.end method
