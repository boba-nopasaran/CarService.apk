.class Lcom/car/common/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/LocationManager;


# direct methods
.method constructor <init>(Lcom/car/common/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 9

    const/16 v8, 0x64

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v5, v5, Lcom/car/common/LocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v6, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v6}, Lcom/car/common/LocationManager;->access$100(Lcom/car/common/LocationManager;)Landroid/location/LocationManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v5, v5, Lcom/car/common/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v5, v5, Lcom/car/common/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v5}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v5, v5, Lcom/car/common/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v5}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    if-gt v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.car.satellites"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "count"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v5}, Lcom/car/common/LocationManager;->access$000(Lcom/car/common/LocationManager;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/car/common/LocationManager$2;->this$0:Lcom/car/common/LocationManager;

    iget-object v5, v5, Lcom/car/common/LocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
