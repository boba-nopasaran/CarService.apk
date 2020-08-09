.class public Lcom/aispeech/aios/aimedia/a/b/d;
.super Lcom/aispeech/aios/aimedia/a/b/c;

# interfaces
.implements Lcn/kuwo/autosdk/api/OnPlayEndListener;
.implements Lcn/kuwo/autosdk/api/OnPlayerStatusListener;


# static fields
.field private static final d:Ljava/lang/String; = "AIOS-AIMedia-KuwoProxy"

.field private static e:Lcom/aispeech/aios/aimedia/a/b/d;


# instance fields
.field private f:Lcn/kuwo/autosdk/api/KWAPI;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Lcn/kuwo/autosdk/api/PlayerStatus;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/kuwo/autosdk/bean/Music;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/b/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->h:Z

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->i:Lcn/kuwo/autosdk/api/PlayerStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->j:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    const-string v1, "auto"

    invoke-static {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI;->createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayEndListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayEndListener;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/d;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/a/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/b/d;->e:Lcom/aispeech/aios/aimedia/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/b/d;->e:Lcom/aispeech/aios/aimedia/a/b/d;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/b/d;->e:Lcom/aispeech/aios/aimedia/a/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/b/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/b/d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/b/d;->e()V

    return-void
.end method

.method static synthetic c(Lcom/aispeech/aios/aimedia/a/b/d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/b/d;->d()V

    return-void
.end method

.method static synthetic d(Lcom/aispeech/aios/aimedia/a/b/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/PlayerStatus;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->i:Lcn/kuwo/autosdk/api/PlayerStatus;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/l;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/l;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/o;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/o;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-KuwoProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KuwoProxy#search()] with: info = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], listnner = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onMusicSearched(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aispeech/aios/aimedia/a/b/e;

    invoke-direct {v2, p0, p2}, Lcom/aispeech/aios/aimedia/a/b/e;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/p;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/p;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/m;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/m;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/q;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/q;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/s;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/s;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayEndListener(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->f:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayerStatusListener(Landroid/content/Context;)V

    return-void
.end method

.method public c(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/r;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/r;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/t;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/t;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/u;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/u;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/v;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/aimedia/a/b/v;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/b/d;->g()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/f;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/f;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/g;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/g;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/h;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/h;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/i;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/i;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/j;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/j;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, ""

    return-object v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/k;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/k;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayEnd(Lcn/kuwo/autosdk/api/PlayEndType;)V
    .locals 0

    return-void
.end method

.method public onPlayerStatus(Lcn/kuwo/autosdk/api/PlayerStatus;Lcn/kuwo/autosdk/bean/Music;)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/d;->i:Lcn/kuwo/autosdk/api/PlayerStatus;

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/d;->k:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/b/n;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/b/n;-><init>(Lcom/aispeech/aios/aimedia/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
