.class Lcom/aispeech/aios/aimedia/a/a/h;
.super Lcom/kaolafm/sdk/client/an;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/an;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8003\u62c9\u641c\u7d22\u5931\u8d25:errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/kaolafm/sdk/client/ErrorInfo;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/kaolafm/sdk/client/ErrorInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->j(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->k(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->g(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onFMSearched(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->l(Lcom/aispeech/aios/aimedia/a/a/e;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/SearchData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    const-string v0, "AIOS-AIMedia-KLFMProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8003\u62c9\u641c\u7d22\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u8282\u76ee"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->f(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/SearchData;

    new-instance v4, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v4}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/SearchData;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/SearchData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->h(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v3}, Lcom/aispeech/aios/aimedia/a/a/e;->g(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onFMSearched(Ljava/lang/String;Ljava/util/List;)V

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/h;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->i(Lcom/aispeech/aios/aimedia/a/a/e;)V

    :cond_2
    return-void
.end method
