.class public Lcom/amap/api/navi/NaviSetting;
.super Ljava/lang/Object;
.source "NaviSetting.java"


# instance fields
.field private mCameraInfoUpdateEnabled:Z

.field mIsMonitorCameraEnabled:Z

.field private mTbtControl:Lcom/autonavi/rtbt/IAE8;

.field private screenAlwaysBright:Z

.field private trafficInfoUpdateEnabled:Z

.field private trafficStatusUpdateEnabled:Z

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/rtbt/IAE8;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->mIsMonitorCameraEnabled:Z

    iput-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->trafficStatusUpdateEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->trafficInfoUpdateEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->mCameraInfoUpdateEnabled:Z

    iput-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->screenAlwaysBright:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object p2, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "autonavi"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "NaviSetting"

    const-string v2, "NaviSetting(Context context, WTBTControl tbtControl)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "NaviSetting"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCameraInfoUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->mCameraInfoUpdateEnabled:Z

    return v0
.end method

.method isMonitorCameraEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->mIsMonitorCameraEnabled:Z

    return v0
.end method

.method public isScreenAlwaysBright()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->screenAlwaysBright:Z

    return v0
.end method

.method public isTrafficInfoUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->trafficInfoUpdateEnabled:Z

    return v0
.end method

.method public isTrafficStatusUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->trafficStatusUpdateEnabled:Z

    return v0
.end method

.method public setCameraInfoUpdateEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/navi/NaviSetting;->mCameraInfoUpdateEnabled:Z

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    iget-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->mCameraInfoUpdateEnabled:Z

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->setCameraInfoUpdateEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMonitorCameraEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/NaviSetting;->mIsMonitorCameraEnabled:Z

    return-void
.end method

.method public setScreenAlwaysBright(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/amap/api/navi/NaviSetting;->screenAlwaysBright:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/navi/NaviSetting;->screenAlwaysBright:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "NaviSetting"

    const-string v2, "setScreenAlwaysBright(boolean isAlwaysBright)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrafficInfoUpdateEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/navi/NaviSetting;->trafficInfoUpdateEnabled:Z

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    iget-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->trafficInfoUpdateEnabled:Z

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->setTrafficInfoUpdateEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTrafficStatusUpdateEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/navi/NaviSetting;->trafficStatusUpdateEnabled:Z

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/NaviSetting;->mTbtControl:Lcom/autonavi/rtbt/IAE8;

    iget-boolean v1, p0, Lcom/amap/api/navi/NaviSetting;->trafficStatusUpdateEnabled:Z

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->setTrafficStatusUpdateEnabled(Z)V

    :cond_0
    return-void
.end method
