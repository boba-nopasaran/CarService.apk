.class Lcom/aispeech/aios/aimedia/a/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/speechcontrol/IMainDataCallback",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;)Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->m(Lcom/aispeech/aios/aimedia/a/a/k;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->n(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->n(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mSearchAlbumList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->o(Lcom/aispeech/aios/aimedia/a/a/k;)V

    return-void

    :cond_0
    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "get mSearchAlbumList 0"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public errCallBack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/x;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->p(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchAlbumList error="

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

    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/x;->a(Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;)V

    return-void
.end method
