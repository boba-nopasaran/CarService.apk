.class public interface abstract Lcom/hongfans/rearview/services/api/SecondProgramListener;
.super Ljava/lang/Object;
.source "SecondProgramListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/SecondProgramListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnSecondProgramChange(Lcom/hongfans/rearview/services/api/ProgramModel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
