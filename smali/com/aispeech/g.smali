.class public final Lcom/aispeech/g;
.super Lcom/aispeech/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/aispeech/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/h;-><init>(Lcom/aispeech/h$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "recordId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aispeech/AIResult;

    invoke-direct {v0}, Lcom/aispeech/AIResult;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aispeech/AIResult;->setLast(Z)V

    sget v2, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    invoke-virtual {v0, v2}, Lcom/aispeech/AIResult;->setResultType(I)V

    invoke-virtual {v0, p1}, Lcom/aispeech/AIResult;->setResultObject(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/AIResult;->setTimestamp(J)V

    invoke-virtual {v0, v1}, Lcom/aispeech/AIResult;->setRecordId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/g;->a:Lcom/aispeech/h$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/g;->a:Lcom/aispeech/h$a;

    invoke-interface {v1, v0}, Lcom/aispeech/h$a;->a(Lcom/aispeech/AIResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
