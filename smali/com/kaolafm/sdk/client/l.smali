.class Lcom/kaolafm/sdk/client/l;
.super Lcom/kaolafm/sdk/client/am;


# instance fields
.field final synthetic c:Lcom/kaolafm/sdk/client/an;

.field final synthetic d:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/an;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/l;->d:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/l;->c:Lcom/kaolafm/sdk/client/an;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/am;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/kaolafm/sdk/client/l;->c:Lcom/kaolafm/sdk/client/an;

    invoke-virtual {v0, p1}, Lcom/kaolafm/sdk/client/an;->a(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
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

    iget-wide v4, v0, Lcom/kaolafm/sdk/client/Music;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/kaolafm/sdk/client/SearchData;->a(J)V

    iget-object v4, v0, Lcom/kaolafm/sdk/client/Music;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kaolafm/sdk/client/SearchData;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/kaolafm/sdk/client/Music;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kaolafm/sdk/client/SearchData;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/kaolafm/sdk/client/SearchType;->AUDIO:Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/SearchType;->value()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kaolafm/sdk/client/SearchData;->a(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/l;->c:Lcom/kaolafm/sdk/client/an;

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/an;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method
