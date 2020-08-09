.class public Lcom/car/common/CarCloudServiceImpl;
.super Lcom/car/common/CarCloudServicer;
.source "CarCloudServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/CarCloudServiceImpl$1;,
        Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;,
        Lcom/car/common/CarCloudServiceImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field static final TAG:Ljava/lang/String; = "CarSvc_CarCloudServiceImpl"


# instance fields
.field final mConnection:Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mICarCloudCallback:Lcom/car/common/ICarCloudCallback;

.field mService:Lcom/car/common/ICarCloud;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/common/CarCloudServicer;-><init>()V

    new-instance v0, Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;-><init>(Lcom/car/common/CarCloudServiceImpl;Lcom/car/common/CarCloudServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mConnection:Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;

    new-instance v0, Lcom/car/common/CarCloudServiceImpl$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CarCloudServiceImpl$MyHandler;-><init>(Lcom/car/common/CarCloudServiceImpl;Lcom/car/common/CarCloudServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mICarCloudCallback:Lcom/car/common/ICarCloudCallback;

    iput-object p1, p0, Lcom/car/common/CarCloudServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.car.cloud"

    invoke-static {p1, v0}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/common/CarCloudServiceImpl;->bindService()V

    :cond_0
    return-void
.end method


# virtual methods
.method bindService()V
    .locals 10

    const-wide/16 v8, 0x5dc

    const/4 v6, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.cloud.CarCloudService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.cloud"

    const-string v4, "com.car.cloud.CarCloudService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "from_outside"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/common/CarCloudServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/car/common/CarCloudServiceImpl;->mConnection:Lcom/car/common/CarCloudServiceImpl$MyServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/car/common/CarCloudServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/common/CarCloudServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public deviceOnline()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v1}, Lcom/car/common/ICarCloud;->deviceOnline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCloudId()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v2}, Lcom/car/common/ICarCloud;->getCloudId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getUserListAsync()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v1}, Lcom/car/common/ICarCloud;->getUserListAsync()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v1}, Lcom/car/common/ICarCloud;->getUserStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public registerCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/car/common/CarCloudServiceImpl;->mICarCloudCallback:Lcom/car/common/ICarCloudCallback;

    iget-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v0, p1}, Lcom/car/common/ICarCloud;->registerCallback(Lcom/car/common/ICarCloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeUser(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v1, p1}, Lcom/car/common/ICarCloud;->removeUser(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v0, p1}, Lcom/car/common/ICarCloud;->unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userOnline(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarCloudServiceImpl;->mService:Lcom/car/common/ICarCloud;

    invoke-interface {v1, p1}, Lcom/car/common/ICarCloud;->userOnline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
