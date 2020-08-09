.class public Lcom/aispeech/aios/client/AIOSMusicDataNode;
.super Ljava/lang/Object;
.source "AIOSMusicDataNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AIOSMusicDataNode"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/aispeech/aios/client/AIOSMusicDataNode;


# instance fields
.field private mListener:Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

.field private mNode:Lcom/aispeech/aios/BaseNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;-><init>(Lcom/aispeech/aios/client/AIOSMusicDataNode;)V

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    return-void
.end method

.method static synthetic access$000(Lcom/aispeech/aios/client/AIOSMusicDataNode;)Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mListener:Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/client/AIOSMusicDataNode;
    .locals 2

    const-class v1, Lcom/aispeech/aios/client/AIOSMusicDataNode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-direct {v0}, Lcom/aispeech/aios/client/AIOSMusicDataNode;-><init>()V

    sput-object v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    sget-object v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->start()Z

    :cond_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSMusicDataNode;
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
.method public getBusClient()Lcom/aispeech/aios/BusClient;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    return-object v0
.end method

.method public postData(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    const-string v2, "asset.songs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/aios/BaseNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "AIOSMusicDataNode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post msg: asset.songs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setMuiscSyncListener(Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode;->mListener:Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    return-void
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public toJsonData(Lcom/aispeech/aios/bean/MusicInfo;)Lorg/json/JSONObject;
    .locals 8

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/MusicInfo;->getSongInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/MusicInfo;->getSongInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;

    invoke-virtual {v6}, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "title"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/MusicInfo;->getSongInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;

    invoke-virtual {v6}, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "artist"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/MusicInfo;->getSongInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;

    invoke-virtual {v6}, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "name"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/MusicInfo;->getSongInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;

    invoke-virtual {v6}, Lcom/aispeech/aios/bean/MusicInfo$SongInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v6, "songs"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Music josn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/aispeech/ailog/AILog;->json(Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
