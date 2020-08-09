.class public final Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSMusicManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSMusicManager"

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;


# instance fields
.field private musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

.field private searchKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/SearchMusic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->searchKeys:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;
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

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanLocalMusicInfo()V
    .locals 3

    const-string v0, "AIOSMusicManager"

    const-string v1, "[AIOSMusicManager#cleanLocalMusicInfo()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.music.local.app.clean"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public getMusicListener()Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

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

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
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

    const/4 v10, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "AIOSMusicManager"

    invoke-static {v6, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "AIOSMusicManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ttimestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sdk.music.search"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, p2, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->searchKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->searchKeys:Ljava/util/List;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->fromJson(Lorg/json/JSONObject;)Lcom/aispeech/aios/sdk/bean/SearchMusic;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    iget-object v7, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->searchKeys:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onSearch(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v6, "AIOSMusicManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callback done\ttimestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v6, "sdk.music.play"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, p2, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onPlay()V

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-direct {v0, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/aispeech/aios/sdk/bean/Music;->fromJson(Lorg/json/JSONObject;)Lcom/aispeech/aios/sdk/bean/Music;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6, v5}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onPlayList(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const-string v6, "sdk.music.play.mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    aget-object v6, p2, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    aget-object v7, p2, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onSetPlayMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v6, "sdk.music.pause"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onPause()V

    goto/16 :goto_1

    :cond_7
    const-string v6, "sdk.music.resume"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onResume()V

    goto/16 :goto_1

    :cond_8
    const-string v6, "sdk.music.prev"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onPrev()V

    goto/16 :goto_1

    :cond_9
    const-string v6, "sdk.music.next"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onNext()V

    goto/16 :goto_1

    :cond_a
    const-string v6, "sdk.music.stop"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onStop()V

    goto/16 :goto_1

    :cond_b
    const-string v6, "sdk.music.exit"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    invoke-interface {v6}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onExit()V

    goto/16 :goto_1
.end method

.method protected isNonNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sdk.music.play.mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk.music.search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk.music.lyric"

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

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.music.search"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.music.play"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.music.play.mode"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.music.pause"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.music.resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.music.prev"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.music.next"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sdk.music.stop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sdk.music.exit"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "sdk.music.lyric"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "sdk.music.sync.result"

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

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.music.search"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.music.play"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.music.play.mode"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdk.music.pause"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdk.music.resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdk.music.prev"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sdk.music.next"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sdk.music.stop"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sdk.music.exit"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "sdk.music.lyric"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "sdk.music.sync.result"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public postMusicSearchResult(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Music;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v5, "AIOSMusicManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AIOSMusicManager#postMusicSearchResult()] with: musics = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], keyIndex = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aispeech/aios/sdk/bean/Music;

    invoke-virtual {v3}, Lcom/aispeech/aios/sdk/bean/Music;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->searchKeys:Ljava/util/List;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aispeech/aios/sdk/bean/SearchMusic;

    invoke-virtual {v5}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v5

    const-string v6, "sdk.music.songs.search.result"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/aispeech/aios/sdk/SDKNode;->publish(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public postMusicSearchResultFromZero(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Music;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#postMusicSearchResultFromZero()] with: musics = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], keyIndex = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->postMusicSearchResult(Ljava/util/List;I)V

    return-void
.end method

.method public registerMusicListener(Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;)V
    .locals 5
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#registerMusicListener()] with: listener = ["

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

    const-string v4, "music"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    return-void
.end method

.method public setDisplayListEnabled(Z)V
    .locals 5

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#setDisplayListEnabled()] with: enable = ["

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

    const-string v1, "sdk.music.display.list.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setLocalMusicInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#setLocalMusicInfo()] with: musicName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], musicPackageName = ["

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

    const-string v1, "sdk.music.local.app.info"

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

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#setPlayState()] with: state = ["

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

    const-string v1, "sdk.music.play.status.change"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setScanLocalMusicEnabled(Z)V
    .locals 5

    const-string v0, "AIOSMusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSMusicManager#setScanLocalMusicEnabled()] with: enable = ["

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

    const-string v1, "sdk.music.local.scan.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public syncLocalMusicList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/LocalMusic;",
            ">;)V"
        }
    .end annotation

    const-string v5, "AIOSMusicManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AIOSMusicManager#syncLocalMusicList()] with: list = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aispeech/aios/sdk/bean/LocalMusic;

    invoke-virtual {v4}, Lcom/aispeech/aios/sdk/bean/LocalMusic;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "songs"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "AIOSMusicManager"

    const-string v6, "Sync music\uff1a"

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AIOSMusicManager"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->json(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v5

    const-string v6, "asset.songs"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unregisterMusicListener()V
    .locals 5

    const-string v0, "AIOSMusicManager"

    const-string v1, "[AIOSMusicManager#unregisterMusicListener()]"

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

    const-string v4, "music"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->musicListener:Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    return-void
.end method
