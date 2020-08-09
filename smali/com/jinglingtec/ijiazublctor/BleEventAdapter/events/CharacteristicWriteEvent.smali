.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;
.super Ljava/lang/Object;
.source "CharacteristicWriteEvent.java"


# instance fields
.field private final mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mStatus:I

    return-void
.end method


# virtual methods
.method public getmCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getmGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacteristicWriteEvent{mGatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCharacteristic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
