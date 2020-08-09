.class public Lcom/car/common/voice/IFlySemanticWrapper;
.super Ljava/lang/Object;
.source "IFlySemanticWrapper.java"


# static fields
.field public static final OP_CALL:Ljava/lang/String; = "CALL"

.field public static final OP_LAUNCH:Ljava/lang/String; = "LAUNCH"

.field public static final OP_OPEN:Ljava/lang/String; = "OPEN"

.field public static final OP_PLAY:Ljava/lang/String; = "PLAY"

.field public static final OP_POSITION:Ljava/lang/String; = "POSITION"

.field public static final OP_QUERY:Ljava/lang/String; = "QUERY"

.field public static final OP_ROUTE:Ljava/lang/String; = "ROUTE"


# instance fields
.field public data:Lorg/json/JSONObject;

.field public operation:Ljava/lang/String;

.field public semantic:Lorg/json/JSONArray;

.field public service:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public webPage:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallNumberOrName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndPoi()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFinalText(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isCallAction()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getCallNumberOrName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u547c\u53eb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getCallNumberOrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isNaviAction()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getEndPoi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u822a\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getEndPoi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isQueryAction()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isWeatherService()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getWeatherTips()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://fake.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isRestaunantService()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u9644\u8fd1\u7684\u7f8e\u98df"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->isOpenAction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getWebsite()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8f6c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/IFlySemanticWrapper;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getMusicJsonSring()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMusicList()Ljava/util/ArrayList;
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

    iget-object v6, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v7, "result"

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

    const-string v6, "singer"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    const-string v6, "downloadUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

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

.method public getUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->webPage:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->webPage:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->webPage:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getWeatherTips()Ljava/lang/String;
    .locals 10

    const-string v0, "\u672a\u77e5"

    iget-object v8, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v9, "result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/car/common/voice/IFlySemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v9, "result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    new-instance v7, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v7}, Lcom/car/common/voice/SuggestItem;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "weather"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v8, "city"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    const-string v8, "tempRange"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    const-string v8, "date"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "lastUpdateTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u6e29\u5ea6, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->semantic:Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->semantic:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/car/common/voice/IFlySemanticWrapper;->semantic:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "slots"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public isCallAction()Z
    .locals 2

    const-string v0, "CALL"

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMusicAction()Z
    .locals 2

    const-string v0, "PLAY"

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaviAction()Z
    .locals 2

    const-string v0, "ROUTE"

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpenAction()Z
    .locals 2

    const-string v0, "OPEN"

    iget-object v1, p0, Lcom/car/common/voice/IFlySemanticWrapper;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isQueryAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRestaunantService()Z
    .locals 2

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    const-string v1, "restaurant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeatherService()Z
    .locals 2

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/IFlySemanticWrapper;->service:Ljava/lang/String;

    const-string v1, "weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRequeryCurCityWeather()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
