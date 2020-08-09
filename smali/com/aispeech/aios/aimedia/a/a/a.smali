.class public Lcom/aispeech/aios/aimedia/a/a/a;
.super Lcom/aispeech/aios/aimedia/a/a/c;


# static fields
.field private static final d:Ljava/lang/String; = "AIOS-AIMedia-CybFMProxy"

.field private static f:Lcom/aispeech/aios/aimedia/a/a/a;

.field private static i:Landroid/os/Handler;


# instance fields
.field private e:Landroid/content/Context;

.field private g:Lcom/hongfans/carmedia/MediaAPI;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->h:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/a;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    const-string v0, "hongfans"

    invoke-static {p1, v0}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/a;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/a;->f:Lcom/aispeech/aios/aimedia/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/a;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/a;->f:Lcom/aispeech/aios/aimedia/a/a/a;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/a;->f:Lcom/aispeech/aios/aimedia/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/a;)Lcom/hongfans/carmedia/MediaAPI;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "AIOS-AIMedia-CybFMProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>>\u6253\u5f00\u8f66\u60a6\u5b9dFM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v2, "com.hongfans.rearview"

    invoke-virtual {v0, v2}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    :goto_1
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/a;->i:Landroid/os/Handler;

    new-instance v2, Lcom/aispeech/aios/aimedia/a/a/b;

    invoke-direct {v2, p0}, Lcom/aispeech/aios/aimedia/a/a/b;-><init>(Lcom/aispeech/aios/aimedia/a/a/a;)V

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e8

    goto :goto_1
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getTrack()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"text\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 3

    const-string v0, "------------------ net fm  \u6839\u636e\u5173\u952e\u5b57\u641c\u7d22\u58f0\u97f3----------"

    invoke-static {v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/a;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-direct {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;-><init>()V

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setCategory(Ljava/lang/String;)V

    :cond_0
    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setAlbum(Ljava/lang/String;)V

    :cond_1
    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setTrack(Ljava/lang/String;)V

    :cond_2
    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setArtist(Ljava/lang/String;)V

    :cond_3
    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setKeyWord(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v2}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->h:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onFMSearched(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const-string v1, "AIOS-AIMedia-CybFMProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>\u5173\u95ed\u8f66\u60a6\u5b9dFM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->exitAPP(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 3

    const-string v0, "AIOS-AIMedia-CybFMProxy"

    const-string v1, ">>>>>>>>>>>>>>\u8f66\u60a6\u5b9dFM switchChannel"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v1, "com.hongfans.rearview"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    invoke-virtual {v1}, Lcom/hongfans/carmedia/MediaAPI;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/a;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybFMProxy"

    const-string v1, ">>>>>>>>>>>>>>\u8f66\u60a6\u5b9dFM \u6682\u505c"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPrevious(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0
.end method

.method public j()V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybFMProxy"

    const-string v1, ">>>>>>>>>>>>>>\u8f66\u60a6\u5b9dFM \u6682\u505c"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
