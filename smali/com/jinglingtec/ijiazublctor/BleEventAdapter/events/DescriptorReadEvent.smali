.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;
.super Ljava/lang/Object;
.source "DescriptorReadEvent.java"


# instance fields
.field private final mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput p3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mStatus:I

    return-void
.end method


# virtual methods
.method public getmDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method

.method public getmGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;->mStatus:I

    return v0
.end method
