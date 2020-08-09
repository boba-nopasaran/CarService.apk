.class public final Lcom/aispeech/c/g;
.super Lcom/aispeech/tts/k;
.source "SourceFile"


# instance fields
.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/aispeech/tts/k;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aispeech/c/g;->c:F

    iput v1, p0, Lcom/aispeech/c/g;->d:I

    iput v1, p0, Lcom/aispeech/c/g;->e:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/aispeech/c/g;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/c/g;->g:Z

    const-string v0, "mp3"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->n(Ljava/lang/String;)V

    const-string v0, "cloud"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->r(Ljava/lang/String;)V

    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->a(Ljava/lang/String;)V

    const-string v0, "raw"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->q(Ljava/lang/String;)V

    const-string v0, "CloudTTSParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/g;->c:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/g;->e:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/g;->d:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aispeech/tts/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/g;->f:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/g;->g:Z

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v1, "speechRate"

    iget v2, p0, Lcom/aispeech/c/g;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v1, "refText"

    iget-object v2, p0, Lcom/aispeech/c/g;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v1, "leftMargin"

    iget v2, p0, Lcom/aispeech/c/g;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v1, "rightMargin"

    iget v2, p0, Lcom/aispeech/c/g;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v1, "speechVolume"

    iget v2, p0, Lcom/aispeech/c/g;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/c/g;->a:Lorg/json/JSONObject;

    const-string v2, "useStream"

    iget-boolean v0, p0, Lcom/aispeech/c/g;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/tts/k;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "en.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/g;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/g;->h:Ljava/lang/String;

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/c/g;->g:Z

    return v0
.end method
