.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;
.super Ljava/lang/Object;
.source "CharacteristicReadEvent.java"


# instance fields
.field private final mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mStatus:I

    return-void
.end method


# virtual methods
.method public getmCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getmGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicReadEvent;->mStatus:I

    return v0
.end method
