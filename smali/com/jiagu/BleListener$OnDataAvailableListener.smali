.class public interface abstract Lcom/jiagu/BleListener$OnDataAvailableListener;
.super Ljava/lang/Object;
.source "BleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataAvailableListener"
.end annotation


# virtual methods
.method public abstract onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end method
