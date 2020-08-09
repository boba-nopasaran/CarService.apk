.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;
.super Landroid/app/Service;
.source "DeviceDiscoveryService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final SCAN_PERIOD:J = 0x2710L


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBleEventBus:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z

.field private mScanningTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanning:Z

    const-string v0, "DeviceDiscoveryService"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$1;-><init>(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBleEventBus:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanningTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->stopScanning()V

    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->scanLeDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->startScanning()V

    :cond_0
    return-void
.end method

.method private startScanning()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->startScanning()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService$2;-><init>(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->startScanning() startLeScan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanningTime:J

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    return-void
.end method

.method private stopScanning()V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->stopScanning()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanning:Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[ble_discovery]-->onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v1

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBleEventBus:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBleEventBus:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    invoke-virtual {v1, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->register(Ljava/lang/Object;)V

    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mScanning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->stopScanning()V

    :cond_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBleEventBus:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    invoke-virtual {v0, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ble_discovery]-->onStartCommand()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->stopSelf()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;->scanLeDevice(Z)V

    goto :goto_0
.end method

.method public produceAnswer()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;
    .locals 2
    .annotation runtime Lcom/squareup/otto/Produce;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;

    invoke-direct {v0, v1, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;-><init>(Landroid/bluetooth/BluetoothDevice;[B)V

    return-object v0
.end method
