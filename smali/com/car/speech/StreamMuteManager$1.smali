.class Lcom/car/speech/StreamMuteManager$1;
.super Landroid/os/Handler;
.source "StreamMuteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/StreamMuteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/StreamMuteManager;


# direct methods
.method constructor <init>(Lcom/car/speech/StreamMuteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/StreamMuteManager$1;->this$0:Lcom/car/speech/StreamMuteManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x64

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/car/speech/StreamMuteManager$1;->this$0:Lcom/car/speech/StreamMuteManager;

    iget-object v1, v1, Lcom/car/speech/StreamMuteManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/car/speech/StreamMuteManager$1;->this$0:Lcom/car/speech/StreamMuteManager;

    iget v2, v2, Lcom/car/speech/StreamMuteManager;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarSvc_StreamMuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aiosState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v1, "awake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v4, v2, v3}, Lcom/car/speech/StreamMuteManager$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/speech/StreamMuteManager$1;->this$0:Lcom/car/speech/StreamMuteManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    goto :goto_0
.end method
