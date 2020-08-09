.class public Lcom/car/common/voice/USCSemanticWrapper;
.super Ljava/lang/Object;
.source "USCSemanticWrapper.java"


# static fields
.field public static final OP_ANSWER:Ljava/lang/String; = "ANSWER"

.field public static final OP_ARTIST_SEARCH:Ljava/lang/String; = "SEARCH_ARTIST"

.field public static final OP_MUSIC_SEARCH:Ljava/lang/String; = "SEARCH_SONG"

.field public static final OP_STOCK:Ljava/lang/String; = "STOCK_INFO"


# instance fields
.field public code:Ljava/lang/String;

.field public data:Lorg/json/JSONObject;

.field public general:Lorg/json/JSONObject;

.field public semantic:Lorg/json/JSONObject;

.field public service:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswerContent()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->general:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->general:Lorg/json/JSONObject;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->general:Lorg/json/JSONObject;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFinalText(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/car/common/voice/USCSemanticWrapper;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->isAnswer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getAnswerContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u7b54"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getAnswerContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->isMusicSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getMusicJsonSring()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5728\u7ebf\u97f3\u4e50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getMusicJsonSring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->isStockInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getStockTips()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getStockTips()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMusicJsonSring()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "musicinfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "musicinfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
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

.method public getMusicKeyWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->semantic:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->semantic:Lorg/json/JSONObject;

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/car/common/voice/USCSemanticWrapper;->semantic:Lorg/json/JSONObject;

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStockTips()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/car/common/voice/USCSemanticWrapper;->getAnswerContent()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/car/common/voice/USCSemanticWrapper;->data:Lorg/json/JSONObject;

    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "mChangeAmount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "mChangeRate"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u4e0b\u8dcc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u8dcc\u5e45\u4e3a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "mChartImgUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u4e0a\u6da8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6da8\u5e45\u4e3a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public isAnswer()Z
    .locals 2

    const-string v0, "ANSWER"

    iget-object v1, p0, Lcom/car/common/voice/USCSemanticWrapper;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMusicSearch()Z
    .locals 2

    const-string v0, "SEARCH_SONG"

    iget-object v1, p0, Lcom/car/common/voice/USCSemanticWrapper;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEARCH_ARTIST"

    iget-object v1, p0, Lcom/car/common/voice/USCSemanticWrapper;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/USCSemanticWrapper;->service:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/common/voice/USCSemanticWrapper;->service:Ljava/lang/String;

    const-string v1, "cn.yunzhisheng.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStockInfo()Z
    .locals 2

    const-string v0, "STOCK_INFO"

    iget-object v1, p0, Lcom/car/common/voice/USCSemanticWrapper;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
