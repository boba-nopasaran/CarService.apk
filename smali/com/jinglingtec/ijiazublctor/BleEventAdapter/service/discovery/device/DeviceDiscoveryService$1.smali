.class Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;
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

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->mLeScanCallback()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;

    invoke-direct {v1, p1, p3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;-><init>(Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
