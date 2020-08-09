.class public Lcom/aispeech/aios/aimedia/a/b/a;
.super Lcom/aispeech/aios/aimedia/a/b/c;


# static fields
.field private static final d:Ljava/lang/String; = "AIOS-AIMedia-CybProxy"

.field private static e:Lcom/aispeech/aios/aimedia/a/b/a;

.field private static h:Landroid/os/Handler;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/hongfans/carmedia/MediaAPI;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/b/c;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/b/a;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    const-string v0, "hongfans"

    invoke-static {p1, v0}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/a;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/a/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/b/a;->e:Lcom/aispeech/aios/aimedia/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/b/a;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/b/a;->e:Lcom/aispeech/aios/aimedia/a/b/a;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/b/a;->e:Lcom/aispeech/aios/aimedia/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/b/a;)Lcom/hongfans/carmedia/MediaAPI;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "AIOS-AIMedia-CybProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>>\u6253\u5f00\u8f66\u60a6\u5b9dMusic "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v2, "com.hongfans.rearview"

    invoke-virtual {v0, v2}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    sget-object v0, Lcom/aispeech/aios/aimedia/a/b/a;->h:Landroid/os/Handler;

    new-instance v2, Lcom/aispeech/aios/aimedia/a/b/b;

    invoke-direct {v2, p0}, Lcom/aispeech/aios/aimedia/a/b/b;-><init>(Lcom/aispeech/aios/aimedia/a/b/a;)V

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

.method public a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 6

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByItem"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"text\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "search temp"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/b/a;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onMusicSearched(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByName"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"text\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v1, "AIOS-AIMedia-CybProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>\u5173\u95ed\u8f66\u60a6\u5b9dMusic "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->exitAPP(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByNameAndArtist"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/b/a;->a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByArtist"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"text\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 6

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByAlbumAndArtist"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"text\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "playByAlbum"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"text\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 6

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "\u64ad\u653e\u672c\u5730\u6b4c\u66f2"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"text\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "\u5207\u6362\u64ad\u653e\u6a21\u5f0f\uff0c\u73b0\u5728\u4e0d\u652f\u6301\u3002"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    return-void
.end method

.method public f()V
    .locals 4

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "\u968f\u4fbf\u6765\u9996\u6b4c"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    const-string v2, "\u968f\u4fbf\u6765\u9996\u6b4c"

    const-string v3, "{\"text\":\"\u968f\u4fbf\u6765\u9996\u6b4c\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, ">>>>>>>>>>>>>>\u8f66\u60a6\u5b9dMusic \u6682\u505c"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "\u4e0a\u4e00\u9996"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPrevious(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, "\u4e0b\u4e00\u9996"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    const-string v0, ""

    return-object v0
.end method

.method public k()V
    .locals 2

    const-string v0, "AIOS-AIMedia-CybProxy"

    const-string v1, ">>>>>>>>>>>>>>\u8f66\u60a6\u5b9dMusic \u6682\u505c"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/a;->g:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    return-void
.end method
