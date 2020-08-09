.class Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;
.super Ljava/lang/Object;
.source "IflytekTTSPlayer.java"

# interfaces
.implements Lcom/iflytek/tts/ITtsListener;
.implements Lcom/iflytek/tts/ITtsInitListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mTTSDir:Ljava/lang/String;


# instance fields
.field private inited:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayId:J

.field private mITASTtsListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mITASTtslistener:Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;

.field private mSpeaker:I

.field private mSpeedType:I

.field private mTTSSession:Lcom/iflytek/tts/TtsSession;

.field private mTotalPlayId:J

.field private mTtsStream:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tencent/wecarspeech/data3/tts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->inited:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTtsStream:I

    const v0, 0xc3be

    iput v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeaker:I

    const/16 v0, 0x7fff

    iput v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mVolumeType:I

    iput v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeedType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "new IflytekTTSPlayer"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTtsStream:I

    iget-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->inited:Z

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ttsDir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/tts/TtsSession;

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSDir:Ljava/lang/String;

    invoke-direct {v1, p1, p0, v2}, Lcom/iflytek/tts/TtsSession;-><init>(Landroid/content/Context;Lcom/iflytek/tts/ITtsInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v2, "iflytek TTS init failed"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->inited:Z

    goto :goto_0
.end method

.method public onPlayBegin()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayBegin mTotalPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;->onPlayBegin()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPlayBegin mCurrentPlayId is not exited"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayCompleted mTotalPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;->onPlayCompleted()V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPlayCompleted mCurrentPlayId is not exited"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayInterrupted()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayInterrupted mTotalPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentPlayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;

    invoke-interface {v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;->onPlayInterrupted()V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPlayInterrupted mCurrentPlayId is not exited"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgressReturn(II)V
    .locals 0

    return-void
.end method

.method public onTtsInited(ZI)V
    .locals 5

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTtsInited state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-nez v2, :cond_1

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onTtsInited getTTSSession is null"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const/16 v1, 0x277a

    :try_start_0
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    iget v3, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTtsStream:I

    invoke-virtual {v2, p0, v3}, Lcom/iflytek/tts/TtsSession;->sessionStart(Lcom/iflytek/tts/ITtsListener;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionStart state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x277a

    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionStart state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reterrId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionStart error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeaker:I

    invoke-virtual {p0, v2}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsSpeaker(I)V

    iget v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mVolumeType:I

    invoke-virtual {p0, v2}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsVolume(I)V

    iget v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeedType:I

    invoke-virtual {p0, v2}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->setTtsSpeed(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x4e21

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    invoke-virtual {v2}, Lcom/iflytek/tts/TtsSession;->initService()V

    goto/16 :goto_0
.end method

.method public play(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play mTotalPlayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentPlayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    invoke-virtual {v2, p1}, Lcom/iflytek/tts/TtsSession;->startSpeak(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts play ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    invoke-virtual {v2}, Lcom/iflytek/tts/TtsSession;->initService()V

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->onPlayCompleted()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->onPlayCompleted()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setTtsSpeaker(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeaker:I

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    const/16 v1, 0x500

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/tts/TtsSession;->setParam(II)I

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtsSpeaker Speaker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTtsSpeaker error"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTtsSpeed(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mSpeedType:I

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    const/16 v1, 0x502

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/tts/TtsSession;->setParam(II)I

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtsSpeed speedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTtsSpeed error"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTtsVolume(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mVolumeType:I

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    const/16 v1, 0x504

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/tts/TtsSession;->setParam(II)I

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtsVolume volumeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setTtsVolume error"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    invoke-virtual {v0}, Lcom/iflytek/tts/TtsSession;->stopSpeak()I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unInit()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mITASTtsListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTotalPlayId:J

    iput-wide v2, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mCurrentPlayId:J

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->TAG:Ljava/lang/String;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    invoke-virtual {v0}, Lcom/iflytek/tts/TtsSession;->sessionStop()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->inited:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/IflytekTTSPlayer;->mTTSSession:Lcom/iflytek/tts/TtsSession;

    return-void
.end method
