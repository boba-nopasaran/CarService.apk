.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;
.super Ljava/lang/Object;
.source "ScanningEvent.java"


# static fields
.field public static final scan_stop:I = 0x3

.field public static final scan_suc:I = 0x2

.field public static final scanning:I = 0x1


# instance fields
.field private final mBluetoothDevices:[Landroid/bluetooth/BluetoothDevice;

.field private mScanning:I


# direct methods
.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;->mScanning:I

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;->mBluetoothDevices:[Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public getMScanning()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;->mScanning:I

    return v0
.end method

.method public getmBluetoothDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;->mBluetoothDevices:[Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning Event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ScanningEvent;->mScanning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
