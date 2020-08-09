.class public interface abstract Lcom/hongfans/rearview/services/api/ProgramListener;
.super Ljava/lang/Object;
.source "ProgramListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/ProgramListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnProgramChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
