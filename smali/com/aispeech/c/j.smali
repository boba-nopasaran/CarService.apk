.class public final Lcom/aispeech/c/j;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    iput v0, p0, Lcom/aispeech/c/j;->c:I

    iput v0, p0, Lcom/aispeech/c/j;->d:I

    iput-boolean v0, p0, Lcom/aispeech/c/j;->e:Z

    iput-boolean v2, p0, Lcom/aispeech/c/j;->f:Z

    iput-boolean v0, p0, Lcom/aispeech/c/j;->g:Z

    iput-boolean v2, p0, Lcom/aispeech/c/j;->h:Z

    iput v1, p0, Lcom/aispeech/c/j;->i:F

    iput v1, p0, Lcom/aispeech/c/j;->j:F

    iput-boolean v0, p0, Lcom/aispeech/c/j;->k:Z

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/j;->r(Ljava/lang/String;)V

    const-string v0, "cn.asr.rec"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/j;->a(Ljava/lang/String;)V

    const-string v0, "LocalASRParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/j;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/j;->j:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/j;->d:I

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "slotName"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/j;->i:F

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "hyps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "slotContent"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "beam"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/j;->e:Z

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v4, "env"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/aispeech/c/j;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aispeech/c/j;->d:I

    const/16 v6, 0xa

    if-gt v0, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "nbest="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/c/j;->d:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_xbnf_rec="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/j;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_conf_dnn="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/j;->f:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aispeech/c/j;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aispeech/c/j;->c:I

    if-ne v0, v1, :cond_6

    const-string v0, "use_frame_split= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "use_vad_restart= 0;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    iget v0, p0, Lcom/aispeech/c/j;->i:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "confirm_score="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/c/j;->i:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lcom/aispeech/c/j;->j:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "cancel_score="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/c/j;->j:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_forceout="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/j;->h:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_pinyin="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/j;->g:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "disable_comm="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/aispeech/c/j;->k:Z

    if-eqz v6, :cond_9

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/aispeech/c/j;->c:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    const-string v0, "use_frame_split= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "use_vad_restart= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/j;->c:I

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/j;->f:Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "grammarRecordId"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/j;->g:Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "contextId"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/j;->h:Z

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/j;->a:Lorg/json/JSONObject;

    const-string v1, "resName"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/j;->k:Z

    return-void
.end method
