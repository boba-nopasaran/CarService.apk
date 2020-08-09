.class Lcom/aispeech/aios/aimedia/a/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/speechcontrol/IMainDataCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->i(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get categoryModels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/k;->j(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->k(Lcom/aispeech/aios/aimedia/a/a/k;)V

    return-void
.end method

.method public errCallBack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/w;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->l(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCategoryList error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic successCallBack(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/w;->a(Ljava/util/List;)V

    return-void
.end method
