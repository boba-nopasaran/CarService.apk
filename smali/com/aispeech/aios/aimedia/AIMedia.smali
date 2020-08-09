.class public Lcom/aispeech/aios/aimedia/AIMedia;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AIMedia"

.field private static mInstance:Lcom/aispeech/aios/aimedia/AIMedia;


# instance fields
.field private currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aispeech/aios/aimedia/AIMedia;->mInstance:Lcom/aispeech/aios/aimedia/AIMedia;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-virtual {v0, v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicIndex(I)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-virtual {v0, v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmIndex(I)V

    return-void
.end method

.method public static declared-synchronized getIntance()Lcom/aispeech/aios/aimedia/AIMedia;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/AIMedia;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/AIMedia;->mInstance:Lcom/aispeech/aios/aimedia/AIMedia;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/AIMedia;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/AIMedia;-><init>()V

    sput-object v0, Lcom/aispeech/aios/aimedia/AIMedia;->mInstance:Lcom/aispeech/aios/aimedia/AIMedia;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/AIMedia;->mInstance:Lcom/aispeech/aios/aimedia/AIMedia;
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
.method public getCurrentConf()Lcom/aispeech/aios/aimedia/bean/ConfBean;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    return-object v0
.end method

.method public getFMControl()Lcom/aispeech/aios/aimedia/controller/FMController;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/controller/FMController;->getInstance(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/controller/FMController;

    move-result-object v0

    return-object v0
.end method

.method public getMusicControl()Lcom/aispeech/aios/aimedia/controller/MusicController;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/controller/MusicController;->getInstance(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/controller/MusicController;

    move-result-object v0

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initAIMedia(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/AIMedia;->scanMusic()Lcom/aispeech/aios/aimedia/bean/ConfBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/AIMedia;->scanFM()Lcom/aispeech/aios/aimedia/bean/ConfBean;

    move-result-object v1

    new-instance v2, Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-direct {v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;-><init>()V

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getFmIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmIndex(I)V

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getFmPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmPackage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getMusicIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicIndex(I)V

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getMusicPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicPackage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/aispeech/aios/aimedia/AIMedia;->setCurrentConf(Lcom/aispeech/aios/aimedia/bean/ConfBean;)V

    return-void
.end method

.method public scanFM()Lcom/aispeech/aios/aimedia/bean/ConfBean;
    .locals 4

    new-instance v2, Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-direct {v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->fmPackges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v3

    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->fmPackges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmIndex(I)V

    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->fmPackges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setFmPackage(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public scanMusic()Lcom/aispeech/aios/aimedia/bean/ConfBean;
    .locals 4

    new-instance v2, Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-direct {v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->musicPackges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/AIMedia;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v3

    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->musicPackges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicIndex(I)V

    sget-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->musicPackges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->setMusicPackage(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setCurrentConf(Lcom/aispeech/aios/aimedia/bean/ConfBean;)V
    .locals 3

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    const-string v0, "AIMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentMediaConf Changed , music :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-virtual {v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getMusicPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,fm :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/AIMedia;->currentConf:Lcom/aispeech/aios/aimedia/bean/ConfBean;

    invoke-virtual {v2}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getFmPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/AIMedia;->getMusicControl()Lcom/aispeech/aios/aimedia/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/controller/MusicController;->initProxy()V

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/AIMedia;->getFMControl()Lcom/aispeech/aios/aimedia/controller/FMController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/controller/FMController;->initProxy()V

    return-void
.end method
