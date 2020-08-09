.class public Lcom/car/speech/SpeechSystemCtrl;
.super Ljava/lang/Object;
.source "SpeechSystemCtrl.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;
.implements Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;
.implements Lcom/aispeech/aios/sdk/listener/AIOSRadioListener;


# static fields
.field static final TAG:Ljava/lang/String; = "CarSvc_SpeechSystemCtrl"

.field static sInstance:Lcom/car/speech/SpeechSystemCtrl;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/speech/SpeechSystemCtrl;->sInstance:Lcom/car/speech/SpeechSystemCtrl;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechSystemCtrl;
    .locals 1

    sget-object v0, Lcom/car/speech/SpeechSystemCtrl;->sInstance:Lcom/car/speech/SpeechSystemCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/speech/SpeechSystemCtrl;

    invoke-direct {v0, p0}, Lcom/car/speech/SpeechSystemCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/speech/SpeechSystemCtrl;->sInstance:Lcom/car/speech/SpeechSystemCtrl;

    :cond_0
    sget-object v0, Lcom/car/speech/SpeechSystemCtrl;->sInstance:Lcom/car/speech/SpeechSystemCtrl;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->registerSystemListener(Lcom/aispeech/aios/sdk/listener/AIOSSystemListener;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->registerStatusListener(Lcom/aispeech/aios/sdk/listener/AIOSStatusListener;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSRadioManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSRadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/aios/sdk/manager/AIOSRadioManager;->registerRadioListener(Lcom/aispeech/aios/sdk/listener/AIOSRadioListener;)V

    return-void
.end method

.method public onAIOSStatusChange(Ljava/lang/String;)V
    .locals 4

    const-string v1, "CarSvc_SpeechSystemCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAIOSStatusChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v1, "awake"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    goto :goto_0
.end method

.method public onAMPlay(D)V
    .locals 3

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/common/SystemCtrl;->fmFreq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onCloseApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCloseState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "CarSvc_SpeechSystemCtrl"

    const-string v3, "onCloseState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "bluetooth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "edog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/car/common/SystemCtrl;->wifiEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v2, "hot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/car/common/SystemCtrl;->softApEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v2, "screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    const-string v1, "\u5df2\u7ecf\u5173\u95ed\u5c4f\u5e55"

    goto :goto_0

    :cond_6
    const-string v2, "driving_recorder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onContextInput(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContextOutput(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFMPlay(D)V
    .locals 3

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/common/SystemCtrl;->fmFreq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onListeningChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpenApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpenState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v1, "CarSvc_SpeechSystemCtrl"

    const-string v2, "onOpenState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "edog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "driving_recorder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->dvrOpen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/car/common/SystemCtrl;->wifiEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "hot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/car/common/SystemCtrl;->softApEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPlayerStatusChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecognitionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecorderStatusChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetBrightness(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CarSvc_SpeechSystemCtrl"

    const-string v2, "onSetBrightness"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "raise"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightUp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "lower"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightDown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightMax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightMin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSetVolume(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CarSvc_SpeechSystemCtrl"

    const-string v2, "onSetVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/speech/StreamMuteManager;->isMute()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    :cond_2
    const-string v1, "raise"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeUp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "lower"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeDown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeMax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeOff(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/car/speech/SpeechSystemCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeOff(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSnapShot()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onVadVolumeChange(F)V
    .locals 0

    return-void
.end method
