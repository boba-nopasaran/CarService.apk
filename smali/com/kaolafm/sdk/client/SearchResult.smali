.class public abstract Lcom/kaolafm/sdk/client/SearchResult;
.super Lcom/kaolafm/sdk/client/ISearchResult$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/ISearchResult$Stub;-><init>()V

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

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
