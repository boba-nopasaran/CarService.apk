.class public Lcom/jiagu/MultipleBleService;
.super Landroid/app/Service;
.source "MultipleBleService.java"

# interfaces
.implements Lcom/jiagu/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiagu/MultipleBleService$LocalBinder;
    }
.end annotation


# static fields
.field private static final MAX_CONNECT_NUM:I = 0x10

.field private static final SCAN_PERIOD:J = 0x2710L

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/jiagu/MultipleBleService;


# instance fields
.field bleManager:Lcom/jiagu/BleManager;

.field private isScanning:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGattMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectedAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnConnectionStateChangeListener:Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

.field private mOnDataAvailableListener:Lcom/jiagu/BleListener$OnDataAvailableListener;

.field private mOnMtuChangedListener:Lcom/jiagu/BleListener$OnMtuChangedListener;

.field private mOnReadRemoteRssiListener:Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

.field private mOnServicesDiscoveredListener:Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

.field private mScanLeDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jiagu/MultipleBleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiagu/MultipleBleService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jiagu/MultipleBleService;->instance:Lcom/jiagu/MultipleBleService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiagu/MultipleBleService;->mScanLeDeviceList:Ljava/util/List;

    sput-object p0, Lcom/jiagu/MultipleBleService;->instance:Lcom/jiagu/MultipleBleService;

    sget-object v0, Lcom/jiagu/MultipleBleService;->TAG:Ljava/lang/String;

    const-string v1, "BleService initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/jiagu/MultipleBleService;
    .locals 2

    sget-object v0, Lcom/jiagu/MultipleBleService;->instance:Lcom/jiagu/MultipleBleService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MultipleBleService is not bind."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/jiagu/MultipleBleService;->instance:Lcom/jiagu/MultipleBleService;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->close()V

    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->close(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public discoverServices(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->discoverServices(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableBluetooth(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->enableBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method protected getBinder()Lcom/jiagu/MultipleBleService$LocalBinder;
    .locals 1

    new-instance v0, Lcom/jiagu/MultipleBleService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/jiagu/MultipleBleService$LocalBinder;-><init>(Lcom/jiagu/MultipleBleService;)V

    return-object v0
.end method

.method public getConnectDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->getConnectDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectNum()I
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->getConnectNum()I

    move-result v0

    return v0
.end method

.method public getScanLeDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->mScanLeDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initializeManager()Lcom/jiagu/BleManager;
    .locals 1

    invoke-static {p0}, Lcom/jiagu/BleManager;->getInstance(Landroid/content/Context;)Lcom/jiagu/BleManager;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBluetooth()Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->isEnableBluetooth()Z

    move-result v0

    return v0
.end method

.method public isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jiagu/MultipleBleService;->isScanning:Z

    return v0
.end method

.method public isSupportBle()Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->isSupportBle()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Lcom/jiagu/MultipleBleService;->getBinder()Lcom/jiagu/MultipleBleService$LocalBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/jiagu/MultipleBleService;->initializeManager()Lcom/jiagu/BleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Lcom/jiagu/BleManager;->initialize()I

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->setEnEventBus(Z)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jiagu/MultipleBleService;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jiagu/MultipleBleService;->instance:Lcom/jiagu/MultipleBleService;

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2}, Lcom/jiagu/BleManager;->readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public readCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jiagu/BleManager;->readCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readDescriptor(Ljava/lang/String;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/jiagu/MultipleBleService;->readDescriptor(Ljava/lang/String;Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    return v0
.end method

.method public readDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jiagu/BleManager;->readDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readRemoteRssi(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->readRemoteRssi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestMtu(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2}, Lcom/jiagu/BleManager;->requestMtu(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public scanLeDevice(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->scanLeDevice(Z)V

    return-void
.end method

.method public scanLeDevice(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jiagu/BleManager;->scanLeDevice(ZJ)Z

    return-void
.end method

.method public serOnReadRemoteRssiListener(Lcom/jiagu/BleListener$OnReadRemoteRssiListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->serOnReadRemoteRssiListener(Lcom/jiagu/BleListener$OnReadRemoteRssiListener;)V

    return-void
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jiagu/BleManager;->setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jiagu/BleManager;->setCharacteristicNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnConnectListener(Lcom/jiagu/BleListener$OnConnectionStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->setOnConnectListener(Lcom/jiagu/BleListener$OnConnectionStateChangeListener;)V

    return-void
.end method

.method public setOnDataAvailableListener(Lcom/jiagu/BleListener$OnDataAvailableListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->setOnDataAvailableListener(Lcom/jiagu/BleListener$OnDataAvailableListener;)V

    return-void
.end method

.method public setOnLeScanListener(Lcom/jiagu/BleListener$OnLeScanListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->setOnLeScanListener(Lcom/jiagu/BleListener$OnLeScanListener;)V

    return-void
.end method

.method public setOnMtuChangedListener(Lcom/jiagu/BleListener$OnMtuChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->setOnMtuChangedListener(Lcom/jiagu/BleListener$OnMtuChangedListener;)V

    return-void
.end method

.method public setOnServicesDiscoveredListener(Lcom/jiagu/BleListener$OnServicesDiscoveredListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1}, Lcom/jiagu/BleManager;->setOnServicesDiscoveredListener(Lcom/jiagu/BleListener$OnServicesDiscoveredListener;)V

    return-void
.end method

.method public writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z
    .locals 7

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, p1, p2}, Lcom/jiagu/BleManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jiagu/BleManager;->writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 6

    iget-object v0, p0, Lcom/jiagu/MultipleBleService;->bleManager:Lcom/jiagu/BleManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jiagu/BleManager;->writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    return v0
.end method
