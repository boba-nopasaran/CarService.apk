.class Lcom/car/gpsservice/CarGPSService$StorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarGPSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/gpsservice/CarGPSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/gpsservice/CarGPSService;


# direct methods
.method private constructor <init>(Lcom/car/gpsservice/CarGPSService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/gpsservice/CarGPSService;Lcom/car/gpsservice/CarGPSService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/gpsservice/CarGPSService$StorageReceiver;-><init>(Lcom/car/gpsservice/CarGPSService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v3}, Lcom/car/gpsservice/CarGPSService;->access$200(Lcom/car/gpsservice/CarGPSService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received sdcard action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v3}, Lcom/car/gpsservice/CarGPSService;->access$300(Lcom/car/gpsservice/CarGPSService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v3}, Lcom/car/gpsservice/CarGPSService;->access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/car/gpsservice/CarGPSThread;->externalStorageChange(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSService$StorageReceiver;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v3}, Lcom/car/gpsservice/CarGPSService;->access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/car/gpsservice/CarGPSThread;->externalStorageChange(Z)V

    goto :goto_1
.end method
