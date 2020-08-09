.class public interface abstract Lcom/kaolafm/sdk/client/IAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/IAudioFocusChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAudioFocusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
