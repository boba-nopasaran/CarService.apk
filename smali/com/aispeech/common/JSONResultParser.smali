.class public Lcom/aispeech/common/JSONResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lorg/json/JSONObject;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONObject;

.field private v:Lorg/json/JSONObject;

.field private w:D

.field private x:D

.field private y:[D

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->h:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->i:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->j:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->k:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->l:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->p:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->q:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->t:Lorg/json/JSONArray;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->v:Lorg/json/JSONObject;

    iput-wide v4, p0, Lcom/aispeech/common/JSONResultParser;->w:D

    iput-wide v4, p0, Lcom/aispeech/common/JSONResultParser;->x:D

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->y:[D

    iput v3, p0, Lcom/aispeech/common/JSONResultParser;->z:I

    iput v3, p0, Lcom/aispeech/common/JSONResultParser;->A:I

    iput v3, p0, Lcom/aispeech/common/JSONResultParser;->B:I

    iput v6, p0, Lcom/aispeech/common/JSONResultParser;->C:I

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->D:I

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->E:I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "applicationId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "sessionId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "recordId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "audioUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "eof"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aispeech/common/JSONResultParser;->C:I

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "rec"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "rec"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->d:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->b:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "pinyin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "var"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "var"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->c:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "eof"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "eof"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aispeech/common/JSONResultParser;->C:I

    :cond_4
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "nbest"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v2, "nbest_conf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, p0, Lcom/aispeech/common/JSONResultParser;->y:[D

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/aispeech/common/JSONResultParser;->y:[D

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "conf"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/common/JSONResultParser;->w:D

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/common/JSONResultParser;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "systime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->A:I

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "wavtime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->z:I

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "forceout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->D:I

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "RTF"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/common/JSONResultParser;->x:D

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "vite_vad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aispeech/common/JSONResultParser;->E:I

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "nbest_sem"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->t:Lorg/json/JSONArray;

    const-string v1, "sem"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->p:Lorg/json/JSONObject;

    const-string v1, "emotion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/common/JSONResultParser;->o:Ljava/lang/String;

    const-string v1, "sex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/common/JSONResultParser;->n:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "semantics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/common/JSONResultParser;->v:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    const-string v1, "input"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/common/JSONResultParser;->q:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAsr_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getConf()D
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/common/JSONResultParser;->w:D

    return-wide v0
.end method

.method public getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getEof()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->C:I

    return v0
.end method

.method public getErrId()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->B:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getForceout()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->D:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNBestRec()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/common/JSONResultParser;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/aispeech/common/JSONResultParser;->s:[Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getNbestSem()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->t:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getNbestconf()[D
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->y:[D

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getRawRec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResultJSON()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRtf()D
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/common/JSONResultParser;->x:D

    return-wide v0
.end method

.method public getSem()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->p:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSemantics()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->v:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSystime()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->A:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getViteVad()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->E:I

    return v0
.end method

.method public getWavtime()I
    .locals 1

    iget v0, p0, Lcom/aispeech/common/JSONResultParser;->z:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/common/JSONResultParser;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
