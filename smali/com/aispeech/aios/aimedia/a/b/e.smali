.class Lcom/aispeech/aios/aimedia/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/autosdk/api/OnSearchListener;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/b/d;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/b/e;->a:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public searchFinshed(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V
    .locals 6

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    new-instance v4, Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-direct {v4}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;-><init>()V

    iget-object v5, v0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setArtist(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setAlbum(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setId(Ljava/lang/String;)V

    iget v5, v0, Lcn/kuwo/autosdk/bean/Music;->duration:I

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setDuration(I)V

    iget-object v0, v0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setTitle(Ljava/lang/String;)V

    const-string v0, "https"

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->b(Lcom/aispeech/aios/aimedia/a/b/d;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->a:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-interface {v0, v3}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onMusicSearched(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->c(Lcom/aispeech/aios/aimedia/a/b/d;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/e;->a:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onMusicSearched(Ljava/util/List;)V

    goto :goto_1
.end method
