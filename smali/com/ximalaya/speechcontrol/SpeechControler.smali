.class public Lcom/ximalaya/speechcontrol/SpeechControler;
.super Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IControler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechControler"

.field private static mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;


# instance fields
.field private callBackType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private isOldSDK:Z

.field private mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

.field private mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

.field private mcallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field private serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isConnected:Z

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$1;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$2;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ximalaya/speechcontrol/SpeechControler;->loadSuccessBack(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler;->loadErrBack(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/IMainDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    return-object v0
.end method

.method private getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v3, 0xd

    const/16 v1, 0xd

    invoke-virtual {p0, p3, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v4

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getAlbumById(JIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/SpeechControler;
    .locals 4

    const-class v1, Lcom/ximalaya/speechcontrol/SpeechControler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_1

    const-class v2, Lcom/ximalaya/speechcontrol/SpeechControler;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSuccessInfo(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$5;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$5;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$6;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$6;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/SpeechControler$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/track/TrackHotList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$7;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$7;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/SpeechControler$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne p1, v1, :cond_9

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne p1, v1, :cond_a

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xd

    if-ne p1, v1, :cond_b

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_b
    move-object p2, v0

    goto/16 :goto_0
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const-string v3, "com.ximalaya.ting.android.car"

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isOldSDK(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "SpeechControler"

    const-string v1, "\u6ca1\u6709\u5b89\u88c5\u8f66\u8f7d\u5e94\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadErrBack(Ljava/lang/String;J)V
    .locals 8

    iget-object v6, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v6

    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-interface {v0, p1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v6

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ximalaya/speechcontrol/IMainDataCallback;

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/SpeechControler$4;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;Lcom/ximalaya/speechcontrol/IMainDataCallback;J)V

    invoke-virtual {v7, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private loadSuccessBack(Ljava/lang/String;IJ)V
    .locals 9

    iget-object v8, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ximalaya/speechcontrol/IMainDataCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getSuccessInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/ximalaya/speechcontrol/SpeechControler$3;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;Lcom/ximalaya/speechcontrol/IMainDataCallback;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Json\u683c\u5f0f\u51fa\u9519"

    invoke-interface {v4, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public browseAlbums(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v0, 0x3

    invoke-virtual {p0, p5, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->browseAlbums(JIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public collectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
    .locals 1

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler$9;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;JLcom/ximalaya/speechcontrol/ICollectCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V

    return-void
.end method

.method public collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->destory()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.car.service.LocalMediaServiceByd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    return-void
.end method

.method public getAlbumByCategoryId(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v0, 0x9

    invoke-virtual {p0, p5, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getAlbumByCategoryId(JIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;I)J"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCategoryList(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCategoryModelList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHisListTracks(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;",
            ">;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/SpeechControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "history_radio_track_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$8;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$8;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-interface {v2, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHotContent(ZIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-eqz p1, :cond_2

    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p0, p4, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getHotContent(ZIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1
.end method

.method protected getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    goto :goto_0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ximalaya.ting.android.car"

    return-object v0
.end method

.method protected getPlayServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.XmPlayerService"

    return-object v0
.end method

.method protected getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    return-object v0
.end method

.method public getSourseLists(Ljava/lang/String;IIIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-ne p5, v1, :cond_2

    :goto_1
    invoke-virtual {p0, p6, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getSourseLists(Ljava/lang/String;IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p6, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getTrackListByLastTrackId(JJILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v0, 0x8

    invoke-virtual {p0, p6, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v7

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrackListByLastTrack(JJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p6, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.car.service.LocalMediaServiceByd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "startLocalService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    return-void
.end method

.method public isCollectedAlbum(J)Z
    .locals 3

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setId(J)V

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v1, v0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->isCollectedAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)Z

    move-result v0

    return v0
.end method

.method public openAppAndContinuePlay(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tingcar://welcome?msg_type=continue_play"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<TT;>;I)J"
        }
    .end annotation

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerServiceBindSuccessCallBack(Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    return-void
.end method

.method public setCategoryId(ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v1, 0xc

    invoke-virtual {p0, p2, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setCategoryId(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDebugBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    return-void
.end method

.method public setPlayByAlbumTracks(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler;->playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    return-void
.end method

.method public setPlayByTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/speechcontrol/SpeechControler;->playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V

    return-void
.end method

.method public setPlayModel(Ljava/lang/String;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayModel(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAndExitApp()V
    .locals 2

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->pause()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.ting.car.byd.exitApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unCollectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
    .locals 1

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler$10;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;JLcom/ximalaya/speechcontrol/ICollectCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V

    return-void
.end method

.method public unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    return-void
.end method
