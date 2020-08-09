.class public final Lcom/aispeech/c/d;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    iput v1, p0, Lcom/aispeech/c/d;->c:I

    iput v2, p0, Lcom/aispeech/c/d;->d:I

    iput-boolean v2, p0, Lcom/aispeech/c/d;->e:Z

    iput-boolean v2, p0, Lcom/aispeech/c/d;->f:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->g:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->h:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->i:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->j:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->k:Z

    iput-boolean v1, p0, Lcom/aispeech/c/d;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/c/d;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/c/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/aispeech/c/d;->i(Z)V

    const-string v0, "cn.asr.rec"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/d;->a(Ljava/lang/String;)V

    const-string v0, "cloud"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/d;->r(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/aispeech/c/d;->g:Z

    iput v1, p0, Lcom/aispeech/c/d;->c:I

    const-string v0, "comm"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/d;->c(Ljava/lang/String;)V

    const-string v0, "CloudASRParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/d;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/d;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/d;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aispeech/speech/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->g:Z

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/aispeech/c/d;->a:Lorg/json/JSONObject;

    const-string v4, "attachAudioUrl"

    iget-boolean v0, p0, Lcom/aispeech/c/d;->g:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/aispeech/c/d;->a:Lorg/json/JSONObject;

    const-string v4, "attachApplicationId"

    iget-boolean v0, p0, Lcom/aispeech/c/d;->f:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/aispeech/c/d;->a:Lorg/json/JSONObject;

    const-string v4, "attachRecordId"

    iget-boolean v0, p0, Lcom/aispeech/c/d;->e:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/aispeech/c/d;->a:Lorg/json/JSONObject;

    const-string v4, "env"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/aispeech/c/d;->d:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/aispeech/c/d;->d:I

    const/16 v6, 0xa

    if-gt v0, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "nbest="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/aispeech/c/d;->d:I

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

    const-string v0, "use_txtpost="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/d;->h:Z

    if-eqz v0, :cond_9

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

    const-string v0, "use_emotion="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/d;->i:Z

    if-eqz v0, :cond_a

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

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_sex="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/d;->j:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "use_cn_conf="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aispeech/c/d;->k:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "use_pinyin="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/aispeech/c/d;->l:Z

    if-eqz v6, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aispeech/c/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userid=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/c/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/aispeech/c/d;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userkey=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/c/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/aispeech/c/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "custom=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/c/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v0, p0, Lcom/aispeech/c/d;->c:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/aispeech/c/d;->c:I

    if-ne v0, v1, :cond_d

    const-string v0, "use_frame_split= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "use_vad_restart= 0;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :cond_d
    iget v0, p0, Lcom/aispeech/c/d;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string v0, "use_frame_split= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "use_vad_restart= 1;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->h:Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/d;->m:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->i:Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->j:Z

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->k:Z

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/d;->l:Z

    return-void
.end method
