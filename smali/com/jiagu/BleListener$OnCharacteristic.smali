.class public interface abstract Lcom/jiagu/BleListener$OnCharacteristic;
.super Ljava/lang/Object;
.source "BleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCharacteristic"
.end annotation


# virtual methods
.method public abstract onError(Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract onSuccess(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;)V
.end method
