.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;
.super Ljava/lang/Object;
.source "DiscoveredDevicesEvent.java"


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final mScanData:[B


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->mScanData:[B

    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getScanData()[B
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->mScanData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DiscoveredDevicesEvent{}"

    return-object v0
.end method
