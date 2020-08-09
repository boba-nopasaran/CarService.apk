.class public interface abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDownloadPlayPath(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
