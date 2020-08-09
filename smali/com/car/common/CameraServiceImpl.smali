.class public Lcom/car/common/CameraServiceImpl;
.super Lcom/car/common/CameraServicer;
.source "CameraServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/CameraServiceImpl$1;,
        Lcom/car/common/CameraServiceImpl$MyServiceConnection;,
        Lcom/car/common/CameraServiceImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field static final TAG:Ljava/lang/String; = "CarSvc_CameraServiceImpl"


# instance fields
.field final mConnection:Lcom/car/common/CameraServiceImpl$MyServiceConnection;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mService:Lcom/car/common/ICameraManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/common/CameraServicer;-><init>()V

    new-instance v0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CameraServiceImpl$MyServiceConnection;-><init>(Lcom/car/common/CameraServiceImpl;Lcom/car/common/CameraServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CameraServiceImpl;->mConnection:Lcom/car/common/CameraServiceImpl$MyServiceConnection;

    new-instance v0, Lcom/car/common/CameraServiceImpl$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/common/CameraServiceImpl$MyHandler;-><init>(Lcom/car/common/CameraServiceImpl;Lcom/car/common/CameraServiceImpl$1;)V

    iput-object v0, p0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/common/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.car.dvr"

    invoke-static {p1, v0}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/common/CameraServiceImpl;->bindService()V

    :cond_0
    return-void
.end method


# virtual methods
.method bindService()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.dvr.CameraService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "from_outside"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/common/CameraServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/car/common/CameraServiceImpl;->mConnection:Lcom/car/common/CameraServiceImpl$MyServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "CarSvc_CameraServiceImpl"

    const-string v4, "Bind ICameraService failed, try later."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const-string v3, "CarSvc_CameraServiceImpl"

    const-string v4, "Bind ICameraService OK, wait connection..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraID(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getCameraID null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1}, Lcom/car/common/ICameraManagerService;->getCameraID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getCameraID Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCameraList()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getCameraList null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getCameraList now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2}, Lcom/car/common/ICameraManagerService;->getCameraList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getCameraList Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLivingStatus(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getLivingStatus null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1}, Lcom/car/common/ICameraManagerService;->getLivingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "getLivingStatus Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "isRecording null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "isRecording now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2}, Lcom/car/common/ICameraManagerService;->isRecording()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "isRecording Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onlinePreviewRequest(Ljava/lang/String;II)V
    .locals 3

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "onlinePreviewRequest null service, request later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "onlinePreviewRequest now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/car/common/ICameraManagerService;->onlinePreviewRequest(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "onlinePreviewRequest Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "startRecording null service, request later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "startRecording now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v1}, Lcom/car/common/ICameraManagerService;->startRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "startRecording Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "stopRecording null service, request later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "stopRecording now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v1}, Lcom/car/common/ICameraManagerService;->stopRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CameraServiceImpl"

    const-string v2, "stopRecording Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeBackPicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1}, Lcom/car/common/ICameraManagerService;->takeBackPicture(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1, p2}, Lcom/car/common/ICameraManagerService;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeBackPicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1}, Lcom/car/common/ICameraManagerService;->takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1, p2}, Lcom/car/common/ICameraManagerService;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeFrontPicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeInsidePicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1}, Lcom/car/common/ICameraManagerService;->takeInsidePicture(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    invoke-interface {v2, p1, p2}, Lcom/car/common/ICameraManagerService;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_CameraServiceImpl"

    const-string v3, "takeInsidePicture Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
