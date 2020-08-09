.class public Lcom/car/gpsservice/CarGPSService;
.super Landroid/app/Service;
.source "CarGPSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/gpsservice/CarGPSService$StorageReceiver;,
        Lcom/car/gpsservice/CarGPSService$LocalBinder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mGPSDataLocalBinder:Landroid/os/IBinder;

.field private mGPSDataRemoteBinder:Lcom/car/gpsservice/ICarGPSService$Stub;

.field private mGPSThread:Lcom/car/gpsservice/CarGPSThread;

.field private mLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private mStorageReceiver:Lcom/car/gpsservice/CarGPSService$StorageReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "CarSvc_GPSService"

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/car/gpsservice/CarGPSService;->mGPSThread:Lcom/car/gpsservice/CarGPSThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/car/gpsservice/CarGPSService$StorageReceiver;-><init>(Lcom/car/gpsservice/CarGPSService;Lcom/car/gpsservice/CarGPSService$1;)V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mStorageReceiver:Lcom/car/gpsservice/CarGPSService$StorageReceiver;

    new-instance v0, Lcom/car/gpsservice/CarGPSService$1;

    invoke-direct {v0, p0}, Lcom/car/gpsservice/CarGPSService$1;-><init>(Lcom/car/gpsservice/CarGPSService;)V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/gpsservice/CarGPSService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/gpsservice/CarGPSService$LocalBinder;-><init>(Lcom/car/gpsservice/CarGPSService;)V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mGPSDataLocalBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/car/gpsservice/CarGPSService$2;

    invoke-direct {v0, p0}, Lcom/car/gpsservice/CarGPSService$2;-><init>(Lcom/car/gpsservice/CarGPSService;)V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mGPSDataRemoteBinder:Lcom/car/gpsservice/ICarGPSService$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mGPSThread:Lcom/car/gpsservice/CarGPSThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/gpsservice/CarGPSService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/gpsservice/CarGPSService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mPath:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->TAG:Ljava/lang/String;

    const-string v1, "From Remote Process bind request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mGPSDataRemoteBinder:Lcom/car/gpsservice/ICarGPSService$Stub;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->TAG:Ljava/lang/String;

    const-string v1, "From Local Process bind request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mGPSDataLocalBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/car/common/CarPath;->getGpsPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mStorageReceiver:Lcom/car/gpsservice/CarGPSService$StorageReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/car/gpsservice/CarGPSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.car.gotosleep"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.syswakeup"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/car/gpsservice/CarGPSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/car/gpsservice/CarGPSThread;

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSService;->mPath:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/car/gpsservice/CarGPSThread;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mGPSThread:Lcom/car/gpsservice/CarGPSThread;

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSService;->mGPSThread:Lcom/car/gpsservice/CarGPSThread;

    invoke-virtual {v2}, Lcom/car/gpsservice/CarGPSThread;->start()V

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSService;->TAG:Ljava/lang/String;

    const-string v3, "GPS Service onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService;->mStorageReceiver:Lcom/car/gpsservice/CarGPSService$StorageReceiver;

    invoke-virtual {p0, v0}, Lcom/car/gpsservice/CarGPSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
