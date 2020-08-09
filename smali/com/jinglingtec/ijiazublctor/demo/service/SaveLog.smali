.class public interface abstract Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog;
.super Ljava/lang/Object;
.source "SaveLog.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;
    }
.end annotation


# virtual methods
.method public abstract StopSaveLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSaveLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
