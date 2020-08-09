.class public Lcom/tencent/wecarspeech/sdk/TASTtsManager;
.super Ljava/lang/Object;
.source "TASTtsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;,
        Lcom/tencent/wecarspeech/sdk/TASTtsManager$TtsSpeaker;,
        Lcom/tencent/wecarspeech/sdk/TASTtsManager$TtsSpeed;,
        Lcom/tencent/wecarspeech/sdk/TASTtsManager$TtsVolume;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/tencent/wecarspeech/sdk/TASTtsManager;


# instance fields
.field private mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarspeech/sdk/TASTtsManager;
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->sInstance:Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initTTS(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+initTTS, streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->init(Landroid/content/Context;I)V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-initTTS, streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseTTS()V
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    const-string v1, "+releaseTTS"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->unInit()V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    const-string v1, "-releaseTTS"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTtsSpeaker(I)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setTtsSpeaker, speaker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsSpeaker(I)V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-setTtsSpeaker, speaker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTtsSpeech(I)V
    .locals 4

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+setTtsSpeech, speedType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsSpeed(I)V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-setTtsSpeech, speedType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, -0x8000

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 v0, 0x7fff

    goto :goto_0
.end method

.method public setTtsVolume(I)V
    .locals 4

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+setTtsVolume, volumeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7fff

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v0, 0x7fff

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsVolume(I)V

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-setTtsVolume, volumeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    const/16 v0, -0x8000

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+speak(), text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->speak(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;)V

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-speak(), text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;)V
    .locals 3

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+speak(), text:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->play(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;)Z

    sget-object v1, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-speak(), text:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ok"

    goto :goto_0

    :cond_1
    const-string v0, "ok"

    goto :goto_1
.end method

.method public stopSpeak()V
    .locals 2

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    const-string v1, "+stopSpeak()"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->mIflytekTTSPlayer:Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->stop()Z

    sget-object v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->TAG:Ljava/lang/String;

    const-string v1, "-stopSpeak()"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
