.class final Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultType()I

    move-result v0

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "recordId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "confidence"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "result"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "wakeupWord"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onWakeup(Ljava/lang/String;DLjava/lang/String;)V
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

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onWakeupEngineStopped()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->a:Ljava/lang/String;

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onReadyForSpeech()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;->a:Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;->onRecorderReleased()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
