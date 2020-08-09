.class public final Lcom/aispeech/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/aispeech/f$a;

.field private b:Lcom/aispeech/h;


# direct methods
.method public constructor <init>(Lcom/aispeech/f$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    new-instance v0, Lcom/aispeech/h;

    new-instance v1, Lcom/aispeech/f$1;

    invoke-direct {v1, p0}, Lcom/aispeech/f$1;-><init>(Lcom/aispeech/f;)V

    invoke-direct {v0, v1}, Lcom/aispeech/h;-><init>(Lcom/aispeech/h$a;)V

    iput-object v0, p0, Lcom/aispeech/f;->b:Lcom/aispeech/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wakeupAsrRetString:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "recordId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "eof"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "vad_status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "wakeupValue"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/aispeech/f;->b:Lcom/aispeech/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "rec"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "input"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aispeech/AIResult;

    invoke-direct {v1}, Lcom/aispeech/AIResult;-><init>()V

    if-ne v3, v0, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/aispeech/AIResult;->setLast(Z)V

    invoke-virtual {v1, v2}, Lcom/aispeech/AIResult;->setRecordId(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/aispeech/AIResult;->setResultObject(Ljava/lang/Object;)V

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    invoke-virtual {v1, v0}, Lcom/aispeech/AIResult;->setResultType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/AIResult;->setTimestamp(J)V

    iget-object v0, p0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    invoke-interface {v0, v1}, Lcom/aispeech/f$a;->b(Lcom/aispeech/AIResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
