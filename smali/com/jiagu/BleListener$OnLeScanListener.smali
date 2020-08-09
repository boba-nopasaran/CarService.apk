.class public interface abstract Lcom/jiagu/BleListener$OnLeScanListener;
.super Ljava/lang/Object;
.source "BleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLeScanListener"
.end annotation


# virtual methods
.method public abstract onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end method

.method public abstract onScanFailed(I)V
.end method

.method public abstract onScanFinish()V
.end method
