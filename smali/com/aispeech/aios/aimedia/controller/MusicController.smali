.class public Lcom/aispeech/aios/aimedia/controller/MusicController;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/aispeech/aios/aimedia/controller/MusicController;


# instance fields
.field private currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

.field private factory:Lcom/aispeech/aios/aimedia/controller/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/aispeech/aios/aimedia/controller/b;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/controller/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->factory:Lcom/aispeech/aios/aimedia/controller/b;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/controller/MusicController;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/controller/MusicController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/controller/MusicController;->mInstance:Lcom/aispeech/aios/aimedia/controller/MusicController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/controller/MusicController;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/controller/MusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/controller/MusicController;->mInstance:Lcom/aispeech/aios/aimedia/controller/MusicController;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/controller/MusicController;->mInstance:Lcom/aispeech/aios/aimedia/controller/MusicController;
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
.method public changePlayMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->c()V

    return-void
.end method

.method public exitApp()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->b()V

    return-void
.end method

.method public initProxy()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->factory:Lcom/aispeech/aios/aimedia/controller/b;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/controller/b;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    return-void
.end method

.method public next()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openApp()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->a()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->h()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->g()V

    return-void
.end method

.method public playAlbumAndArtist(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->c(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    return-void
.end method

.method public playByAlbum(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public playByArtist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public playByItem(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    return-void
.end method

.method public playByName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public playByNameAndArtist(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->b(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    return-void
.end method

.method public playLocal(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/b/c;->d(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V

    return-void
.end method

.method public playRandom()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->f()V

    return-void
.end method

.method public previous()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public search(Lcom/aispeech/aios/aimedia/bean/MusicInfo;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/aios/aimedia/a/b/c;->a(Lcom/aispeech/aios/aimedia/bean/MusicInfo;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/MusicController;->currentProxy:Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/c;->k()V

    return-void
.end method
