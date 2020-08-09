.class public interface abstract Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;
.super Ljava/lang/Object;
.source "IAPIController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setForeground(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
