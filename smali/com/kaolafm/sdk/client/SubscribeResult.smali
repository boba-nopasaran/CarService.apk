.class public abstract Lcom/kaolafm/sdk/client/SubscribeResult;
.super Lcom/kaolafm/sdk/client/ISubscribeResult$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/ISubscribeResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccuss()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
