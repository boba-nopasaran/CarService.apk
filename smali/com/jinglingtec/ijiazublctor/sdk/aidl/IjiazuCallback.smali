.class public interface abstract Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;
.super Ljava/lang/Object;
.source "IjiazuCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInit(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewMenu(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestUpdateAppStatus()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
