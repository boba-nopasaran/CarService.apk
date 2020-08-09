.class public Lcom/aispeech/ailog/JsonLog;
.super Lcom/aispeech/ailog/BaseLog;
.source "JsonLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/ailog/BaseLog;-><init>()V

    return-void
.end method

.method public static printJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    const-string v9, "{"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/aispeech/ailog/JsonLog;->printLine(Ljava/lang/String;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/aispeech/ailog/JsonLog;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/aispeech/ailog/JsonLog;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v0, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2551 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v9, "["

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v2, p1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/aispeech/ailog/JsonLog;->printLine(Ljava/lang/String;Z)V

    return-void
.end method
