.class Lcom/aispeech/aios/aimedia/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/speechcontrol/IMainDataCallback",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;)Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->x(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get categoryIdAlbumList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/k;->y(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;->getAlbums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->z(Lcom/aispeech/aios/aimedia/a/a/k;)V

    return-void
.end method

.method public errCallBack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/o;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->A(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumByCategoryId error="

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

    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/o;->a(Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;)V

    return-void
.end method
