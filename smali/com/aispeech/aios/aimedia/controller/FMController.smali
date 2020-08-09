.class public Lcom/aispeech/aios/aimedia/controller/FMController;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/aispeech/aios/aimedia/controller/FMController;


# instance fields
.field private currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

.field private factory:Lcom/aispeech/aios/aimedia/controller/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/aispeech/aios/aimedia/controller/a;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/controller/a;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->factory:Lcom/aispeech/aios/aimedia/controller/a;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/controller/FMController;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/controller/FMController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/controller/FMController;->mInstance:Lcom/aispeech/aios/aimedia/controller/FMController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/controller/FMController;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/controller/FMController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/controller/FMController;->mInstance:Lcom/aispeech/aios/aimedia/controller/FMController;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/controller/FMController;->mInstance:Lcom/aispeech/aios/aimedia/controller/FMController;
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
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->c()V

    return-void
.end method

.method public exitApp()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->b()V

    return-void
.end method

.method public initProxy()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->factory:Lcom/aispeech/aios/aimedia/controller/a;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/controller/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->k()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPlayAction(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/c;->a(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V

    return-void
.end method

.method public openApp()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->a()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->g()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->f()V

    return-void
.end method

.method public previous()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/c;->a(Ljava/lang/String;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/c;->j()V

    return-void
.end method

.method public switchChannel(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/controller/FMController;->currentProxy:Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/c;->b(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V

    return-void
.end method
