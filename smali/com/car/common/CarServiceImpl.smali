.class public Lcom/car/common/CarServiceImpl;
.super Lcom/car/common/CarServicer;
.source "CarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/CarServiceImpl$1;,
        Lcom/car/common/CarServiceImpl$MyServiceConnection;,
        Lcom/car/common/CarServiceImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field static final TAG:Ljava/lang/String; = "CarSvc_CarServiceImpl"


# instance fields
.field final mConnection:Lcom/car/common/CarServiceImpl$MyServiceConnection;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mService:Lcom/car/common/ICarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/common/CarServicer;-><init>()V

    new-instance v0, Lcom/car/common/CarServiceImpl$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CarServiceImpl$MyServiceConnection;-><init>(Lcom/car/common/CarServiceImpl;Lcom/car/common/CarServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CarServiceImpl;->mConnection:Lcom/car/common/CarServiceImpl$MyServiceConnection;

    new-instance v0, Lcom/car/common/CarServiceImpl$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CarServiceImpl$MyHandler;-><init>(Lcom/car/common/CarServiceImpl;Lcom/car/common/CarServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CarServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/common/CarServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/common/CarServiceImpl;->bindService()V

    return-void
.end method


# virtual methods
.method bindService()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.car.CarService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.car.carservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_remote_process"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/common/CarServiceImpl;->mConnection:Lcom/car/common/CarServiceImpl$MyServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "Bind CarServiceImpl failed, try later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "Bind CarServiceImpl OK, wait connection..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "getBrightness null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    invoke-interface {v2}, Lcom/car/common/ICarService;->getBrightness()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "requestRecognize Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestScreen(ZZLjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "requestScreen null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    invoke-interface {v2, p1, p2, p3}, Lcom/car/common/ICarService;->requestScreen(ZZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CarServiceImpl"

    const-string v3, "requestRecognize Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public screenRecover(Z)V
    .locals 3

    iget-object v1, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_CarServiceImpl"

    const-string v2, "screenRecover null service, request later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    invoke-interface {v1, p1}, Lcom/car/common/ICarService;->screenRecover(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CarServiceImpl"

    const-string v2, "requestRecognize Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 3

    iget-object v1, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_CarServiceImpl"

    const-string v2, "setBrightness null service, request later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    invoke-interface {v1, p1}, Lcom/car/common/ICarService;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CarServiceImpl"

    const-string v2, "requestRecognize Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
