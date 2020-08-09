.class public Lcom/aispeech/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/aispeech/h$a;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/aispeech/h$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/aispeech/h;->b:I

    iput-boolean v0, p0, Lcom/aispeech/h;->c:Z

    iput-object p1, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "recordId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "vad_status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "wakeupValue"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "eof"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v0, :cond_3

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback: vadstatus:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/h;->b:I

    if-nez v6, :cond_0

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback: mVadstatus"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/aispeech/h;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput v6, p0, Lcom/aispeech/h;->b:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/aispeech/h;->c:Z

    iget-object v6, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "callback: onWakeupVadStart"

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    invoke-interface {v6}, Lcom/aispeech/h$a;->a()V

    :cond_0
    :goto_0
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback:mVadStatus:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/aispeech/h;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callback:"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback:wakeupValue:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callback:"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback:vadStatus:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callback:"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callback:isWakeupRet:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/aispeech/h;->c:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callback:eof:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    if-lt v5, v4, :cond_2

    iget-boolean v4, p0, Lcom/aispeech/h;->c:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/aispeech/h;->c:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/aispeech/h;->b:I

    new-instance v4, Lcom/aispeech/AIResult;

    invoke-direct {v4}, Lcom/aispeech/AIResult;-><init>()V

    if-eq v2, v9, :cond_5

    if-ne v2, v0, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {v4, v0}, Lcom/aispeech/AIResult;->setLast(Z)V

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    invoke-virtual {v4, v0}, Lcom/aispeech/AIResult;->setResultType(I)V

    invoke-virtual {v4, p1}, Lcom/aispeech/AIResult;->setResultObject(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/aispeech/AIResult;->setTimestamp(J)V

    invoke-virtual {v4, v3}, Lcom/aispeech/AIResult;->setRecordId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    invoke-interface {v0, v4}, Lcom/aispeech/h$a;->a(Lcom/aispeech/AIResult;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback: vadstatus:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/h;->b:I

    if-ne v6, v0, :cond_0

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback: mVadstatus"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/aispeech/h;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/aispeech/h;->b:I

    iget-object v6, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "callback: onWakeupVadEnd"

    invoke-static {v6, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/aispeech/h;->a:Lcom/aispeech/h$a;

    invoke-interface {v6, v5}, Lcom/aispeech/h$a;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-gt v5, v10, :cond_1

    move v0, v1

    goto :goto_1
.end method
