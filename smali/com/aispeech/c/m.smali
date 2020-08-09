.class public final Lcom/aispeech/c/m;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    const-string v0, "cn.gram"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/m;->a(Ljava/lang/String;)V

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/m;->r(Ljava/lang/String;)V

    const-string v0, "LocalGrammarParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/m;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aispeech/c/m;->a(Z)V

    return-void
.end method


# virtual methods
.method public final d()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/m;->a:Lorg/json/JSONObject;

    const-string v1, "outputPath"

    iget-object v2, p0, Lcom/aispeech/c/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/m;->a:Lorg/json/JSONObject;

    const-string v1, "ebnf"

    iget-object v2, p0, Lcom/aispeech/c/m;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocalGrammarParams"

    const-string v1, "Invalid outputPath"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/aispeech/c/m;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocalGrammarParams"

    const-string v1, "Invalid ebnf"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/aispeech/c/m;->d:Ljava/lang/String;

    goto :goto_0
.end method
