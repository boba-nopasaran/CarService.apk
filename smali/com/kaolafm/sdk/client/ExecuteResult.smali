.class public Lcom/kaolafm/sdk/client/ExecuteResult;
.super Lcom/kaolafm/sdk/client/IExecuteResult$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/IExecuteResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
