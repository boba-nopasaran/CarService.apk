.class public Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;
.super Ljava/lang/Object;
.source "ThirdFMInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fmInfoToJson(Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "track"

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "artist"

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "album"

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static jsonToFMInfo(Ljava/lang/String;)Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;
    .locals 8

    new-instance v4, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;

    invoke-direct {v4}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->setId(Ljava/lang/String;)V

    :cond_0
    const-string v7, "track"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "track"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->setTrack(Ljava/lang/String;)V

    :cond_1
    const-string v7, "artist"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "artist"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->setArtist(Ljava/lang/String;)V

    :cond_2
    const-string v7, "album"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "album"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->setAlbum(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    goto :goto_0
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
            "Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->jsonToFMInfo(Ljava/lang/String;)Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    :cond_1
    return-object v4
.end method

.method public static listToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;

    invoke-static {v2}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->fmInfoToJson(Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->track:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->track:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;->fmInfoToJson(Lcom/aispeech/aios/sdk/bean/ThirdFMInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
