.class public final Lcom/aispeech/aios/sdk/manager/AIOSMapManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSMapManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSMapManager"

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMapManager;


# instance fields
.field private mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMapManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMapManager;
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

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanMapInfo()V
    .locals 2

    const-string v0, "AIOSMapManager"

    const-string v1, "[AIOSMapManager#cleanMapInfo()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.map.local.app.clean"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;)V

    return-void
.end method

.method public getMapListener()Lcom/aispeech/aios/sdk/listener/AIOSMapListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
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

    const/4 v8, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "AIOSMapManager"

    invoke-static {v3, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "AIOSMapManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ttimestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    array-length v3, p2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "sdk.map.navi.start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/aispeech/aios/common/bean/PoiBean;

    invoke-virtual {p0, p2, v8}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getValue([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/aispeech/aios/common/bean/PoiBean;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-interface {v3, v0, v1}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onStartNavi(Ljava/lang/String;Lcom/aispeech/aios/common/bean/PoiBean;)V

    :cond_1
    :goto_0
    const-string v3, "AIOSMapManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback done\ttimestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "sdk.map.navi.cancel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-interface {v3, v0}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onCancelNavi(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "sdk.map.navi.optimize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-virtual {p0, p2, v8}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getValue([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onRoutePlanning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "sdk.map.locate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-interface {v3, v0}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onLocate(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "sdk.map.overview"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-interface {v3, v0}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onOverview(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "sdk.map.zoom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p2, v8}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getValue([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    invoke-interface {v3, v0, v2}, Lcom/aispeech/aios/sdk/listener/AIOSMapListener;->onZoom(Ljava/lang/String;I)V

    goto :goto_0
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

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.map.navi.start"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.map.navi.cancel"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.map.navi.optimize"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.map.locate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.map.overview"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.map.zoom"

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

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.map.navi.start"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.map.navi.cancel"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.map.navi.optimize"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.map.locate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.map.overview"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.map.zoom"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerMapListener(Lcom/aispeech/aios/sdk/listener/AIOSMapListener;)V
    .locals 5
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSMapListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSMapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMapManager#registerMapListener()] with: listener = ["

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

    const-string v4, "map"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    return-void
.end method

.method public setLocalMapInfo(Lcom/aispeech/aios/common/bean/MapInfo;)Z
    .locals 3
    .param p1    # Lcom/aispeech/aios/common/bean/MapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSMapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMapManager#setLocalMapInfo()] with: mapInfo = ["

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->setLocalMapInfo(Lcom/aispeech/aios/common/bean/MapInfo;Z)Z

    move-result v0

    return v0
.end method

.method public setLocalMapInfo(Lcom/aispeech/aios/common/bean/MapInfo;Z)Z
    .locals 4
    .param p1    # Lcom/aispeech/aios/common/bean/MapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "AIOSMapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AIOSMapManager#setLocalMapInfo()] with: mapInfo = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], isClearCache = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->setLocalMapList(Ljava/util/List;Z)Z

    move-result v1

    return v1
.end method

.method public setLocalMapList(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/common/bean/MapInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AIOSMapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMapManager#setLocalMapList()] with: mapInfos = ["

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->setLocalMapList(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public setLocalMapList(Ljava/util/List;Z)Z
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/common/bean/MapInfo;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "AIOSMapManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AIOSMapManager#setLocalMapList()] with: mapInfos = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], isClearCache = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aispeech/aios/common/bean/MapInfo;

    const-string v6, "1.1.2.160918.3"

    invoke-virtual {v3, v6}, Lcom/aispeech/aios/common/bean/MapInfo;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/aispeech/aios/common/bean/MapInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/nfc/FormatException;->printStackTrace()V

    move v4, v5

    :cond_0
    :goto_1
    return v4

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v7

    const-string v8, "sdk.map.local.app.info"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    if-eqz p2, :cond_2

    const-string v6, "true"

    :goto_2
    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v6, "false"
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setRouteEnabled(Z)V
    .locals 5

    const-string v0, "AIOSMapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMapManager#setRouteEnabled()] with: enabled = ["

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

    const-string v1, "sdk.switch.route"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public unregisterMapListener()V
    .locals 5

    const-string v0, "AIOSMapManager"

    const-string v1, "[AIOSMapManager#unregisterMapListener()]"

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

    const-string v4, "map"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->mapListener:Lcom/aispeech/aios/sdk/listener/AIOSMapListener;

    return-void
.end method
