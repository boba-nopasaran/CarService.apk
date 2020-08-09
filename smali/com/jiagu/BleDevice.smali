.class public Lcom/jiagu/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiagu/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private record:[B

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jiagu/BleDevice$1;

    invoke-direct {v0}, Lcom/jiagu/BleDevice$1;-><init>()V

    sput-object v0, Lcom/jiagu/BleDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiagu/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/jiagu/BleDevice;->rssi:I

    iput-object p3, p0, Lcom/jiagu/BleDevice;->record:[B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/jiagu/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiagu/BleDevice;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jiagu/BleDevice;->record:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRecord()[B
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleDevice;->record:[B

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/jiagu/BleDevice;->rssi:I

    return v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setRecord([B)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleDevice;->record:[B

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Lcom/jiagu/BleDevice;->rssi:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/jiagu/BleDevice;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/jiagu/BleDevice;->record:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
