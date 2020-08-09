.class public final Lcom/aispeech/c/k;
.super Lcom/aispeech/speech/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private c:Z

.field private d:I

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    iput-boolean v1, p0, Lcom/aispeech/c/k;->c:Z

    const-string v0, "cn.sds"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/k;->a(Ljava/lang/String;)V

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/k;->r(Ljava/lang/String;)V

    const-string v0, "LocalDialogParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/k;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/aispeech/c/k;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/k;->d:I

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/k;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/k;->c:Z

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/aispeech/speech/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/c/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    iget-boolean v0, p0, Lcom/aispeech/c/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/c/k;->a:Lorg/json/JSONObject;

    const-string v1, "reset"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/c/k;->a:Lorg/json/JSONObject;

    const-string v1, "msgID"

    iget v2, p0, Lcom/aispeech/c/k;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/k;->a:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/aispeech/c/k;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/c/k;->a:Lorg/json/JSONObject;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
