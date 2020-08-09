.class public Lcom/car/tencent/TencentSysCtrl;
.super Ljava/lang/Object;
.source "TencentSysCtrl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;
.implements Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;
.implements Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;


# static fields
.field static sInstance:Lcom/car/tencent/TencentSysCtrl;


# instance fields
.field mContext:Landroid/content/Context;

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/car/tencent/TencentSysCtrl;
    .locals 1

    sget-object v0, Lcom/car/tencent/TencentSysCtrl;->sInstance:Lcom/car/tencent/TencentSysCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/tencent/TencentSysCtrl;

    invoke-direct {v0}, Lcom/car/tencent/TencentSysCtrl;-><init>()V

    sput-object v0, Lcom/car/tencent/TencentSysCtrl;->sInstance:Lcom/car/tencent/TencentSysCtrl;

    :cond_0
    sget-object v0, Lcom/car/tencent/TencentSysCtrl;->sInstance:Lcom/car/tencent/TencentSysCtrl;

    return-object v0
.end method


# virtual methods
.method public decBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightDown(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public decVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeDown(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public enableBluetooth(Z)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public enableMobileNetwork(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableWifi(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public incBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightUp(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public incVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeUp(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->setVolumeClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IVolumeClient;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->setScreenClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IScreenClient;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASSystemManager;->setWirelessClient(Lcom/tencent/wecarspeech/sdk/TASSystemManager$IWirelessClient;)V

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public maxBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightMax(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public maxVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeMax(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public minBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->backlightMin(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public minVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeOff(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public muteScreen()Z
    .locals 4

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public muteVolume(ZI)I
    .locals 1

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/SystemCtrl;->volumeOff(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public setVolume(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wakeScreen()Z
    .locals 4

    iget-object v0, p0, Lcom/car/tencent/TencentSysCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    const/4 v0, 0x0

    return v0
.end method
