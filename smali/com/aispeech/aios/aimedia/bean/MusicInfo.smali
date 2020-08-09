.class public Lcom/aispeech/aios/aimedia/bean/MusicInfo;
.super Ljava/lang/Object;


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public duration:I

.field public id:Ljava/lang/String;

.field private local:Ljava/lang/String;

.field public size:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonToList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/MusicInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-direct {v4}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;-><init>()V

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-direct {v5}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;-><init>()V

    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setDuration(I)V

    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setId(Ljava/lang/String;)V

    const-string v6, "local"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setLocal(Ljava/lang/String;)V

    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setSize(I)V

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setUrl(Ljava/lang/String;)V

    const-string v6, "album"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setAlbum(Ljava/lang/String;)V

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setTitle(Ljava/lang/String;)V

    const-string v6, "artist"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setArtist(Ljava/lang/String;)V

    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setType(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static listToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/MusicInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "album"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "artist"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "duration"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getDuration()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "local"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getLocal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "size"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getSize()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "title"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static musicToJsonObject(Lcom/aispeech/aios/aimedia/bean/MusicInfo;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "album"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static objectToMusic(Lorg/json/JSONObject;)Lcom/aispeech/aios/aimedia/bean/MusicInfo;
    .locals 2

    new-instance v0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;-><init>()V

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setDuration(I)V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setId(Ljava/lang/String;)V

    const-string v1, "local"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setLocal(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setSize(I)V

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setUrl(Ljava/lang/String;)V

    const-string v1, "album"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setAlbum(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setTitle(Ljava/lang/String;)V

    const-string v1, "artist"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->setType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->local:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->size:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->local:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->size:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->local:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
