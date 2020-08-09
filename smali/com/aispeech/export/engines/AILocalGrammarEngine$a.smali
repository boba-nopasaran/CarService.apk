.class final Lcom/aispeech/export/engines/AILocalGrammarEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AILocalGrammarEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/aispeech/export/listeners/AILocalGrammarListener;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/listeners/AILocalGrammarListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(F)V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalGrammarListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AILocalGrammarListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 3

    if-eqz p1, :cond_0

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

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "outputPath"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;->a:Lcom/aispeech/export/listeners/AILocalGrammarListener;

    invoke-interface {v2, v1, v0}, Lcom/aispeech/export/listeners/AILocalGrammarListener;->onUpdateCompleted(Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
