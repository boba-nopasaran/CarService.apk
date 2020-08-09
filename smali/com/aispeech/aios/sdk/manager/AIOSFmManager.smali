.class public Lcom/aispeech/aios/sdk/manager/AIOSFmManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSFmManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSFmManager"

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSFmManager;


# instance fields
.field private fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSFmManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSFmManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSFmManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSFmManager;
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

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanLocalFmInfo()V
    .locals 3

    const-string v0, "AIOSFmManager"

    const-string v1, "[AIOSFmManager#cleanLocalFmInfo()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.fm.local.app.clean"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "AIOSFmManager"

    invoke-static {v2, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "AIOSFmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ttimestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk.fm.search"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    aget-object v3, p2, v6

    invoke-interface {v2, v3}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onSearch(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v2, "AIOSFmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback done \ttimestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "sdk.fm.play"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onPlay()V

    goto :goto_0

    :cond_2
    aget-object v2, p2, v6

    invoke-static {v2}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->jsonToFMInfo(Ljava/lang/String;)Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2, v1}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onPlayList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v2, "sdk.fm.play.mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    aget-object v3, p2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onSetPlayMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "sdk.fm.pause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onPause()V

    goto :goto_0

    :cond_5
    const-string v2, "sdk.fm.resume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onResume()V

    goto :goto_0

    :cond_6
    const-string v2, "sdk.fm.prev"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onPrev()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "sdk.fm.next"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onNext()V

    goto/16 :goto_0

    :cond_8
    const-string v2, "sdk.fm.stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onStop()V

    goto/16 :goto_0

    :cond_9
    const-string v2, "sdk.fm.exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onExit()V

    goto/16 :goto_0

    :cond_a
    const-string v2, "sdk.fm.switchChannel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    invoke-interface {v2}, Lcom/aispeech/aios/sdk/listener/AIOSFmListener;->onSwitchChannel()V

    goto/16 :goto_0
.end method

.method protected isNonNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sdk.fm.play.mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk.fm.search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSubscribe()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.fm.play"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.fm.play.mode"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.fm.search"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.fm.pause"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.fm.resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.fm.prev"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.fm.next"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sdk.fm.stop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sdk.fm.exit"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "sdk.fm.switchChannel"

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

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.fm.play"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.fm.play.mode"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.fm.search"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.fm.pause"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.fm.resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.fm.prev"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.fm.next"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sdk.fm.stop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sdk.fm.exit"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "sdk.fm.switchChannel"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public postFmSearchResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;",
            ">;)V"
        }
    .end annotation

    const-string v1, "AIOSFmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AIOSFmManager#postFmSearchResult()] with: searchKeyWord = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], fmList = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->listToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    const-string v2, "sdk.fm.search.result"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public registerFmListener(Lcom/aispeech/aios/sdk/listener/AIOSFmListener;)V
    .locals 5
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSFmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSFmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSFmManager#registerFmListener()] with: listener = ["

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

    const-string v4, "fm"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    return-void
.end method

.method public setDisplayFmListEnabled(Z)V
    .locals 5

    const-string v0, "AIOSFmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSFmManager#setDisplayFmListEnabled()] with: enable = ["

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

    const-string v1, "sdk.fm.display.list.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setLocalFmInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSFmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSFmManager#setLocalFmInfo()] with: fmName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], fmPackageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.fm.local.app.info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 5

    const-string v0, "AIOSFmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSFmManager#setPlayState()] with: state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.fm.play.status.change"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public unregisterFmListener()V
    .locals 5

    const-string v0, "AIOSFmManager"

    const-string v1, "[AIOSFmManager#unregisterFmListener()]"

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

    const-string v4, "fm"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSFmManager;->fmListener:Lcom/aispeech/aios/sdk/listener/AIOSFmListener;

    return-void
.end method
