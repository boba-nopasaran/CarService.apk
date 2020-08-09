.class public Lcom/car/common/voice/TXZSemanticWrapper;
.super Ljava/lang/Object;
.source "TXZSemanticWrapper.java"


# instance fields
.field public result:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "pois"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "pois"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    new-instance v5, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v5}, Lcom/car/common/voice/SuggestItem;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "geo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public getAudioList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "audios"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "audios"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    new-instance v5, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v5}, Lcom/car/common/voice/SuggestItem;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "text"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public getContactList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "contacts"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v7, "contacts"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    new-instance v5, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v5}, Lcom/car/common/voice/SuggestItem;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "number"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public getStockUrl()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v2, "strUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/common/voice/TXZSemanticWrapper;->result:Lorg/json/JSONObject;

    const-string v2, "strUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
