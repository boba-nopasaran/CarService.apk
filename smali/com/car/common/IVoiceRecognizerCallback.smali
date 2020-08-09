.class public interface abstract Lcom/car/common/IVoiceRecognizerCallback;
.super Ljava/lang/Object;
.source "IVoiceRecognizerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/IVoiceRecognizerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRecognizeResult(IILjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
