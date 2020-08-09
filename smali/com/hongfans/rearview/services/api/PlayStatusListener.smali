.class public interface abstract Lcom/hongfans/rearview/services/api/PlayStatusListener;
.super Ljava/lang/Object;
.source "PlayStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/PlayStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnPlayStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
