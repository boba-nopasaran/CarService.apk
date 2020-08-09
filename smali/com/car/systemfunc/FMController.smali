.class public Lcom/car/systemfunc/FMController;
.super Landroid/content/BroadcastReceiver;
.source "FMController.java"


# static fields
.field public static final FM:Ljava/lang/String; = "fm_enable"

.field public static final FM_FREQ:Ljava/lang/String; = "fm_freq"

.field public static final MCU_VOLTAGE:Ljava/lang/String; = "mcu_voltage"

.field public static final QND_CONFIG_MONO:I = 0x1

.field public static final QND_CONFIG_MUTE:I = 0x2

.field public static final QND_TX_AUDIO_MONO:I = 0x10

.field public static final QND_TX_AUDIO_STEREO:I = 0x0

.field public static final SHUTTIME_ADDR:I = 0x4

.field static final TAG:Ljava/lang/String; = "CarSvc_FMController"

.field public static final VOLTAGE_ADDR:I = 0x1

.field public static final WD_ADDR:I = 0x5

.field private static sLibraryLoadOK:Z


# instance fields
.field final BOOTCOMPLETE_CHECK:I

.field private mAudioManager:Landroid/media/AudioManager;

.field mContentObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field mEnable:Z

.field mFreq:I

.field mHandler:Landroid/os/Handler;

.field private mSavedVolume:I

.field mVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "ro.yunos.product.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fmtx"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/car/systemfunc/FMController;->sLibraryLoadOK:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t load fmtx library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/FMController;->mEnable:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/car/systemfunc/FMController;->mFreq:I

    const/16 v0, 0x71

    iput v0, p0, Lcom/car/systemfunc/FMController;->mVoltage:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/car/systemfunc/FMController;->BOOTCOMPLETE_CHECK:I

    new-instance v0, Lcom/car/systemfunc/FMController$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/FMController$1;-><init>(Lcom/car/systemfunc/FMController;)V

    iput-object v0, p0, Lcom/car/systemfunc/FMController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/systemfunc/FMController$2;

    iget-object v1, p0, Lcom/car/systemfunc/FMController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/car/systemfunc/FMController$2;-><init>(Lcom/car/systemfunc/FMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/systemfunc/FMController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/FMController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getFmSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/FMController;)I
    .locals 1

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getFmFreq()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/FMController;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/FMController;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/FMController;->mSavedVolume:I

    return v0
.end method

.method private native close()I
.end method

.method private native getChannel()I
.end method

.method private native getEnable()I
.end method

.method private getFmFreq()I
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fm_freq"

    iget v2, p0, Lcom/car/systemfunc/FMController;->mFreq:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getFmSwitch()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fm_enable"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native getMcuVer()I
.end method

.method private native getMcuVoltage()I
.end method

.method private native open()I
.end method

.method private native setAudio(II)I
.end method

.method private native setChannel(I)I
.end method

.method private native setEnable(I)I
.end method

.method private setFmFreq(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fm_freq"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setFmSwitch(Z)V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fm_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native setMcuFunc(II)I
.end method

.method private native setMcuOffTime(I)I
.end method

.method private native setMcuVoltage(I)I
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/systemfunc/FMController;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/car/systemfunc/FMController;->mSavedVolume:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "fm_enable"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/FMController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "fm_freq"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/FMController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mcu_voltage"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/FMController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.mcu.set"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getFmSwitch()Z

    move-result v3

    iput-boolean v3, p0, Lcom/car/systemfunc/FMController;->mEnable:Z

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getFmFreq()I

    move-result v3

    iput v3, p0, Lcom/car/systemfunc/FMController;->mFreq:I

    iget-boolean v6, p0, Lcom/car/systemfunc/FMController;->mEnable:Z

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getEnable()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    if-ne v6, v3, :cond_0

    iget v3, p0, Lcom/car/systemfunc/FMController;->mFreq:I

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getChannel()I

    move-result v6

    if-eq v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/car/systemfunc/FMController;->mEnable:Z

    iget v6, p0, Lcom/car/systemfunc/FMController;->mFreq:I

    invoke-virtual {p0, v3, v6, v5}, Lcom/car/systemfunc/FMController;->setFMEnable(ZIZ)V

    :cond_1
    const-string v3, "ro.func.flag"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    const/16 v6, 0x78

    invoke-direct {p0, v3, v6}, Lcom/car/systemfunc/FMController;->setMcuFunc(II)I

    invoke-direct {p0, v4, v5}, Lcom/car/systemfunc/FMController;->setMcuFunc(II)I

    invoke-direct {p0}, Lcom/car/systemfunc/FMController;->getMcuVer()I

    move-result v2

    const-string v3, "sys.mcu.ver"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mcu.set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "addr"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "value"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/car/systemfunc/FMController;->setMcuFunc(II)I

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mcu.done"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method setFMEnable(ZIZ)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x3

    const-string v6, "ro.settings.remove"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "fmstation"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    move v0, v4

    :goto_1
    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_2
    :goto_2
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0, v0}, Lcom/car/systemfunc/FMController;->setEnable(I)I

    move-result v3

    const-string v6, "CarSvc_FMController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEnable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSavedVolume="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/car/systemfunc/FMController;->mSavedVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/car/systemfunc/FMController$3;

    invoke-direct {v5, p0}, Lcom/car/systemfunc/FMController$3;-><init>(Lcom/car/systemfunc/FMController;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    if-nez p3, :cond_2

    iget-object v6, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Lcom/car/systemfunc/FMController;->mSavedVolume:I

    goto :goto_2

    :cond_5
    invoke-direct {p0, p2}, Lcom/car/systemfunc/FMController;->setChannel(I)I

    invoke-direct {p0, v4, v5}, Lcom/car/systemfunc/FMController;->setAudio(II)I

    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_6
    iget-object v4, p0, Lcom/car/systemfunc/FMController;->mAudioManager:Landroid/media/AudioManager;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v9, v6, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v4, "CarSvc_FMController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change volume to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_3

    :catch_1
    move-exception v6

    goto :goto_4
.end method
