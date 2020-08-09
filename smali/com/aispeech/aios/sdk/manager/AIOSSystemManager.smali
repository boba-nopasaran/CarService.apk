.class public final Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSSystemManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSSystemManager"

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;


# instance fields
.field private systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;
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

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemListener()Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AIOSSystemManager"

    invoke-static {v1, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "AIOSSystemManager"

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

    const-string v0, ""

    const-string v1, "sdk.system.volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onSetVolume(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "AIOSSystemManager"

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

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/aispeech/aios/sdk/manager/AIOSTTSManager;->speak(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "sdk.system.brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onSetBrightness(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "sdk.system.common.open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onOpenState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "sdk.system.common.close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onCloseState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "sdk.system.snapshot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    invoke-interface {v1}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onSnapShot()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "sdk.system.app.open"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onOpenApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "sdk.system.app.close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;->onCloseApp(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isAuthSucceeded()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "AIOSSystemManager"

    const-string v8, "[AIOSSystemManager#isAuthSucceeded()]"

    invoke-static {v7, v8}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v1

    const-string v7, "/bus/nodes"

    invoke-virtual {v1, v7}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v3

    new-instance v7, Ljava/lang/String;

    iget-object v8, v3, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-string v8, "keys"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "/keys/auth/result"

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "get"

    aput-object v9, v8, v6

    invoke-virtual {v1, v7, v8}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v7, v4, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-nez v7, :cond_2

    const-string v7, "unknown"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    :goto_0
    const-string v8, "utf-8"

    invoke-direct {v0, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "unknown"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "nil"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, " failed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v5, v6

    :cond_1
    :goto_1
    return v5

    :cond_2
    iget-object v7, v4, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    goto :goto_0

    :cond_3
    const-string v7, "succeeded"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    :goto_2
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string v5, "AIOSSystemManager"

    const-string v7, "Keys node isn\'t start, sdk obtains auth state failed!!!"

    invoke-static {v5, v7}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected isNonNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sdk.system.snapshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitialize()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setDaemonEnabled(Z)V

    return-void
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

    const-string v3, "sdk.system.volume"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.system.brightness"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.system.common.open"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.system.common.close"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.system.snapshot"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.system.app.open"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.system.app.close"

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

    const-string v3, "sdk.system.volume"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.system.brightness"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.system.common.open"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.system.common.close"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.system.snapshot"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.system.app.open"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.system.app.close"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pauseInteraction()V
    .locals 2

    const-string v0, "AIOSSystemManager"

    const-string v1, "[AIOSSystemManager#pauseInteraction()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "ui.mic.click"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;)V

    return-void
.end method

.method public registerSystemListener(Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;)V
    .locals 5

    const-string v0, "AIOSSystemManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSSystemManager#registerSystemListener()] with: systemListener = ["

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

    const-string v4, "system"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    return-void
.end method

.method public restartRecorder()V
    .locals 3

    const-string v1, "AIOSSystemManager"

    const-string v2, "[AIOSSystemManager#restartRecorder()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.RESET_RECORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setACC(Z)V
    .locals 4

    const-string v1, "AIOSSystemManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AIOSSystemManager#setACC()] with: accOn = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.accstat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accOn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setACCOff()V
    .locals 3

    const-string v1, "AIOSSystemManager"

    const-string v2, "[AIOSSystemManager#setACCOff()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action_acc_off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACC(Z)V

    return-void
.end method

.method public setACCOn()V
    .locals 3

    const-string v1, "AIOSSystemManager"

    const-string v2, "[AIOSSystemManager#setACCOn()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action_acc_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACC(Z)V

    return-void
.end method

.method public setDaemonEnabled(Z)V
    .locals 5

    const-string v0, "AIOSSystemManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSSystemManager#setDaemonEnabled()] with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.daemon.thread.enable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aispeech/aios/sdk/SDKNode;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setVoiceWakeupEnabled(Z)V
    .locals 5

    const-string v0, "AIOSSystemManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSSystemManager#setVoiceWakeupEnabled()] with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.voice.wakeup.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public startInteraction()V
    .locals 2

    const-string v0, "AIOSSystemManager"

    const-string v1, "[AIOSSystemManager#startInteraction()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "ui.mic.click"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;)V

    return-void
.end method

.method public startRecorder()V
    .locals 3

    const-string v1, "AIOSSystemManager"

    const-string v2, "[AIOSSystemManager#startRecorder()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.RECORDER_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public stopInteraction()V
    .locals 2

    const-string v0, "AIOSSystemManager"

    const-string v1, "[AIOSSystemManager#stopInteraction()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "ui.pause"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;)V

    return-void
.end method

.method public stopInteractionAndRemoveUI()V
    .locals 2

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "ui.stop"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecorder()V
    .locals 3

    const-string v1, "AIOSSystemManager"

    const-string v2, "[AIOSSystemManager#stopRecorder()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.RECORDER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unregisterSystemListener()V
    .locals 5

    const-string v0, "AIOSSystemManager"

    const-string v1, "[AIOSSystemManager#unregisterSystemListener()]"

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

    const-string v4, "system"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->systemListener:Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;

    return-void
.end method
