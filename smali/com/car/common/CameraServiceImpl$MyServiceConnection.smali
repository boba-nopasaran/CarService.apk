.class final Lcom/car/common/CameraServiceImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "CameraServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/CameraServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/CameraServiceImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/CameraServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/CameraServiceImpl;Lcom/car/common/CameraServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/CameraServiceImpl$MyServiceConnection;-><init>(Lcom/car/common/CameraServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    invoke-static {p2}, Lcom/car/common/ICameraManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/common/ICameraManagerService;

    move-result-object v1

    iput-object v1, v0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    const-string v0, "CarSvc_CameraServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    iget-object v0, v0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "CarSvc_CameraServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servic disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/common/CameraServiceImpl;->mService:Lcom/car/common/ICameraManagerService;

    iget-object v0, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    iget-object v0, v0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/common/CameraServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CameraServiceImpl;

    iget-object v0, v0, Lcom/car/common/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
