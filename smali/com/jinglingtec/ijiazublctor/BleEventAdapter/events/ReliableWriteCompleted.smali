.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;
.super Ljava/lang/Object;
.source "ReliableWriteCompleted.java"


# instance fields
.field private final mGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iput p2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;->mStatus:I

    return-void
.end method


# virtual methods
.method public getmGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;->mStatus:I

    return v0
.end method
