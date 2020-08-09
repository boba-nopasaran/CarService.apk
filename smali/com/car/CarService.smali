.class public Lcom/car/CarService;
.super Landroid/app/Service;
.source "CarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/CarService$LocalBinder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mRemoteBinder:Lcom/car/common/ICarService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "CarSvc_CarService"

    iput-object v0, p0, Lcom/car/CarService;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/car/CarService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/CarService$LocalBinder;-><init>(Lcom/car/CarService;)V

    iput-object v0, p0, Lcom/car/CarService;->mLocalBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/car/CarService$1;

    invoke-direct {v0, p0}, Lcom/car/CarService$1;-><init>(Lcom/car/CarService;)V

    iput-object v0, p0, Lcom/car/CarService;->mRemoteBinder:Lcom/car/common/ICarService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/car/CarService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/CarService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "from_remote_process"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/CarService;->TAG:Ljava/lang/String;

    const-string v1, "From Remote Process bind request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/CarService;->mRemoteBinder:Lcom/car/common/ICarService$Stub;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/CarService;->TAG:Ljava/lang/String;

    const-string v1, "From Local Process bind request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/CarService;->mLocalBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/car/CarService;->TAG:Ljava/lang/String;

    const-string v1, "CarService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
