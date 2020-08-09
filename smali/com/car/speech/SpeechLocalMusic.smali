.class public Lcom/car/speech/SpeechLocalMusic;
.super Ljava/lang/Object;
.source "SpeechLocalMusic.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_LocalMusicListener"

.field static sInstance:Lcom/car/speech/SpeechLocalMusic;


# instance fields
.field mContext:Landroid/content/Context;

.field mMusic:Lcom/car/speech/LocalMusic;

.field private playState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/speech/SpeechLocalMusic;->sInstance:Lcom/car/speech/SpeechLocalMusic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iput-object p1, p0, Lcom/car/speech/SpeechLocalMusic;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/car/speech/SpeechLocalMusic;)I
    .locals 1

    iget v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    return v0
.end method

.method static synthetic access$002(Lcom/car/speech/SpeechLocalMusic;I)I
    .locals 0

    iput p1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechLocalMusic;
    .locals 1

    sget-object v0, Lcom/car/speech/SpeechLocalMusic;->sInstance:Lcom/car/speech/SpeechLocalMusic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/speech/SpeechLocalMusic;

    invoke-direct {v0, p0}, Lcom/car/speech/SpeechLocalMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/speech/SpeechLocalMusic;->sInstance:Lcom/car/speech/SpeechLocalMusic;

    :cond_0
    sget-object v0, Lcom/car/speech/SpeechLocalMusic;->sInstance:Lcom/car/speech/SpeechLocalMusic;

    return-object v0
.end method


# virtual methods
.method public getPlayState()I
    .locals 1

    iget v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    return v0
.end method

.method public init()V
    .locals 3

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->registerMusicListener(Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    const-string v1, "android\u97f3\u4e50"

    const-string v2, "com.android.music"

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setLocalMusicInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/car/speech/LocalMusic;

    iget-object v1, p0, Lcom/car/speech/SpeechLocalMusic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/car/speech/LocalMusic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    return-void
.end method

.method public onExit()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->stop()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onNext()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onNext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->next()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->stop()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->play()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onPlayList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Music;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CarSvc_LocalMusicListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\u97f3\u4e50\u5217\u8868\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onPrev()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onPrev"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->prev()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->play()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onSearch(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/SearchMusic;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aispeech/aios/sdk/bean/SearchMusic;

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/bean/SearchMusic;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CarSvc_LocalMusicListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6b63\u5728\u4e3a\u4f60\u641c\u6b4c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/car/speech/SpeechLocalMusic$1;

    invoke-direct {v7, p0, v1, v4}, Lcom/car/speech/SpeechLocalMusic$1;-><init>(Lcom/car/speech/SpeechLocalMusic;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onSetPlayMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->loopAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->loopOne()V

    goto :goto_0

    :cond_2
    const-string v0, "random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->shuffle()V

    goto :goto_0

    :cond_3
    const-string v0, "circle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->loopAll()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    const-string v0, "CarSvc_LocalMusicListener"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    iget-object v0, p0, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    invoke-virtual {v0}, Lcom/car/speech/LocalMusic;->stop()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/car/speech/SpeechLocalMusic;->playState:I

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    return-void
.end method

.method public onSyncMusicsFinished(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "\u672c\u5730\u97f3\u4e50\u540c\u6b65\u5b8c\u6210"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u672c\u5730\u97f3\u4e50\u540c\u6b65\u5931\u8d25"

    goto :goto_0
.end method
