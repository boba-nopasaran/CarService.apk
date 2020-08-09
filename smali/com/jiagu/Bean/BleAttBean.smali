.class public Lcom/jiagu/Bean/BleAttBean;
.super Ljava/lang/Object;
.source "BleAttBean.java"


# instance fields
.field private address:Ljava/lang/String;

.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private status:I

.field private value:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiagu/Bean/BleAttBean;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/jiagu/Bean/BleAttBean;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiagu/Bean/BleAttBean;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/jiagu/Bean/BleAttBean;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/jiagu/Bean/BleAttBean;->status:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/Bean/BleAttBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/Bean/BleAttBean;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/jiagu/Bean/BleAttBean;->status:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lcom/jiagu/Bean/BleAttBean;->value:[B

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/Bean/BleAttBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/Bean/BleAttBean;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/jiagu/Bean/BleAttBean;->status:I

    return-void
.end method

.method public setValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/Bean/BleAttBean;->value:[B

    return-void
.end method
