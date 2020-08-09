.class public interface abstract Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;
.super Ljava/lang/Object;
.source "IDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBleConnected(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIjiazuDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIjiazuKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
