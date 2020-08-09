.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;
.super Ljava/lang/Object;
.source "BleEventAdapter.java"


# static fields
.field private static ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;


# instance fields
.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    return-object v0
.end method


# virtual methods
.method public closeConnection(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public connectDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public startScanning(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopScanning(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/discovery/device/DeviceDiscoveryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
