.class public final Lcom/aispeech/c/n;
.super Lcom/aispeech/tts/k;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:F

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/aispeech/tts/k;-><init>()V

    iput v0, p0, Lcom/aispeech/c/n;->e:I

    iput v0, p0, Lcom/aispeech/c/n;->f:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/aispeech/c/n;->g:I

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->r(Ljava/lang/String;)V

    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->a(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aispeech/c/n;->d:F

    const-string v0, "LocalTTSParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/n;->d:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/n;->g:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/n;->f:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/n;->e:I

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/n;->a:Lorg/json/JSONObject;

    const-string v1, "speechRate"

    iget v2, p0, Lcom/aispeech/c/n;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/n;->a:Lorg/json/JSONObject;

    const-string v1, "refText"

    iget-object v2, p0, Lcom/aispeech/c/n;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/n;->a:Lorg/json/JSONObject;

    const-string v1, "leftMargin"

    iget v2, p0, Lcom/aispeech/c/n;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/n;->a:Lorg/json/JSONObject;

    const-string v1, "rightMargin"

    iget v2, p0, Lcom/aispeech/c/n;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/n;->a:Lorg/json/JSONObject;

    const-string v1, "speechVolume"

    iget v2, p0, Lcom/aispeech/c/n;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/tts/k;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "en.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/n;->a(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/aispeech/c/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/n;->c:Ljava/lang/String;

    return-void
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/aispeech/c/n;->d:F

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/aispeech/c/n;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/aispeech/c/n;->f:I

    return v0
.end method
