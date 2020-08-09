.class Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;
.super Ljava/lang/Object;
.source "DeviceDiscoveryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->startScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$200(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$300(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->stopScanning() is NOT executed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$400(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)V

    goto :goto_0
.end method
