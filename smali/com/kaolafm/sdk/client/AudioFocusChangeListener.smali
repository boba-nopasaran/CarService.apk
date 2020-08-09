.class public abstract Lcom/kaolafm/sdk/client/AudioFocusChangeListener;
.super Lcom/kaolafm/sdk/client/IAudioFocusChangeListener$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/IAudioFocusChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAudioFocusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
