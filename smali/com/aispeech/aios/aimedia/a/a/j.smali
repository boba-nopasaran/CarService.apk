.class Lcom/aispeech/aios/aimedia/a/a/j;
.super Lcom/kaolafm/sdk/client/ak;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/ak;-><init>()V

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

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->n(Lcom/aispeech/aios/aimedia/a/a/e;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Radio;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Radio;

    const-string v2, "AIOS-AIMedia-KLFMProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/kaolafm/sdk/client/Radio;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/kaolafm/sdk/client/Radio;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", categoryId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/kaolafm/sdk/client/Radio;->c:Ljava/lang/Long;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "AIOS-AIMedia-KLFMProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8003\u62c9\u4e00\u5171\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u7535\u53f0\u8282\u76ee\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->m(Lcom/aispeech/aios/aimedia/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Radio;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/Radio;)V

    :cond_3
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/j;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Lcom/aispeech/aios/aimedia/a/a/e;Z)Z

    goto/16 :goto_0
.end method
