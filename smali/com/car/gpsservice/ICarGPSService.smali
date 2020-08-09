.class public interface abstract Lcom/car/gpsservice/ICarGPSService;
.super Ljava/lang/Object;
.source "ICarGPSService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/gpsservice/ICarGPSService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentGPSFileName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentGPSInfo()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHistoryGPSZipFileName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
