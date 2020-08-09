.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;
.super Ljava/lang/Object;
.source "CharacteristicChangedEvent.java"


# instance fields
.field private final mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method


# virtual methods
.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacteristicWriteEvent{mGatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCharacteristic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
