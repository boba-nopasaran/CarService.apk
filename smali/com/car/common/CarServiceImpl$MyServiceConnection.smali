.class final Lcom/car/common/CarServiceImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "CarServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/CarServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/CarServiceImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/CarServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/CarServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CarServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/CarServiceImpl;Lcom/car/common/CarServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/CarServiceImpl$MyServiceConnection;-><init>(Lcom/car/common/CarServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CarServiceImpl;

    invoke-static {p2}, Lcom/car/common/ICarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/common/ICarService;

    move-result-object v1

    iput-object v1, v0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    const-string v0, "CarSvc_CarServiceImpl"

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

    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CarServiceImpl;

    iget-object v0, v0, Lcom/car/common/CarServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "CarSvc_CarServiceImpl"

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

    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CarServiceImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyServiceConnection;->this$0:Lcom/car/common/CarServiceImpl;

    iget-object v0, v0, Lcom/car/common/CarServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
