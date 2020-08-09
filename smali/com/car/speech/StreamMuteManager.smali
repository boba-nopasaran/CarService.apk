.class public Lcom/car/speech/StreamMuteManager;
.super Ljava/lang/Object;
.source "StreamMuteManager.java"


# static fields
.field static final MUTE_CHECK:I = 0x64

.field static final TAG:Ljava/lang/String; = "CarSvc_StreamMuteManager"

.field static sIntance:Lcom/car/speech/StreamMuteManager;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mStreamType:I

.field mTtsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/car/speech/StreamMuteManager$1;

    invoke-direct {v0, p0}, Lcom/car/speech/StreamMuteManager$1;-><init>(Lcom/car/speech/StreamMuteManager;)V

    iput-object v0, p0, Lcom/car/speech/StreamMuteManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/car/speech/StreamMuteManager;
    .locals 1

    sget-object v0, Lcom/car/speech/StreamMuteManager;->sIntance:Lcom/car/speech/StreamMuteManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x4

    sput-object p0, Lcom/car/speech/StreamMuteManager;->sIntance:Lcom/car/speech/StreamMuteManager;

    iput-object p1, p0, Lcom/car/speech/StreamMuteManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    iput p3, p0, Lcom/car/speech/StreamMuteManager;->mTtsType:I

    iget-object v1, p0, Lcom/car/speech/StreamMuteManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public isMute()Z
    .locals 2

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 5

    const/16 v4, 0x64

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iget-object v0, p0, Lcom/car/speech/StreamMuteManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
