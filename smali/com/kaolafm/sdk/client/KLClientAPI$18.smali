.class Lcom/kaolafm/sdk/client/KLClientAPI$18;
.super Lcom/kaolafm/sdk/client/SearchResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$18;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$18;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/SearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$18;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-virtual {v0, p1}, Lcom/kaolafm/sdk/client/SearchResultV2;->onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Music;

    new-instance v3, Lcom/kaolafm/sdk/client/SearchData;

    invoke-direct {v3}, Lcom/kaolafm/sdk/client/SearchData;-><init>()V

    iget-wide v4, v0, Lcom/kaolafm/sdk/client/Music;->audioId:J

    invoke-virtual {v3, v4, v5}, Lcom/kaolafm/sdk/client/SearchData;->setId(J)V

    iget-object v4, v0, Lcom/kaolafm/sdk/client/Music;->audioName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kaolafm/sdk/client/SearchData;->setName(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/kaolafm/sdk/client/Music;->picUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kaolafm/sdk/client/SearchData;->setImg(Ljava/lang/String;)V

    sget-object v0, Lcom/kaolafm/sdk/client/SearchType;->AUDIO:Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/SearchType;->value()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kaolafm/sdk/client/SearchData;->setType(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$18;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/SearchResultV2;->onSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method
