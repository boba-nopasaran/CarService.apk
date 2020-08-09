.class Lcom/car/common/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/car/common/LocationManager;


# direct methods
.method public constructor <init>(Lcom/car/common/LocationManager;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    iput-object p2, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    const/16 v8, 0x65

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "CarSvc_LocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mRecordLocation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v4}, Lcom/car/common/LocationManager;->access$400(Lcom/car/common/LocationManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v4}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mProvider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$400(Lcom/car/common/LocationManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gps"

    iget-object v3, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    :cond_1
    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    iget-object v2, v2, Lcom/car/common/LocationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/LocationManager$Listener;

    invoke-interface {v1, v5}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    if-nez v2, :cond_3

    const-string v2, "CarSvc_LocationManager"

    const-string v3, "Got first location."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    iput-boolean v5, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    iget-object v2, v2, Lcom/car/common/LocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    iget-object v2, v2, Lcom/car/common/LocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "CarSvc_LocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStatusChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mRecordLocation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v4}, Lcom/car/common/LocationManager;->access$400(Lcom/car/common/LocationManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v4}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iput-boolean v5, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$400(Lcom/car/common/LocationManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    :cond_1
    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    iget-object v2, v2, Lcom/car/common/LocationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/LocationManager$Listener;

    invoke-interface {v1, v5}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
