.class public final Lcom/aispeech/c/o;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:[F

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/o;->r(Ljava/lang/String;)V

    const-string v0, "cn.wakeup"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/o;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/aispeech/c/o;->i(Z)V

    invoke-virtual {p0, v1}, Lcom/aispeech/c/o;->e(I)V

    invoke-virtual {p0, v1}, Lcom/aispeech/c/o;->f(I)V

    const-string v0, "LocalWakeupDnnParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/o;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/o;->c:[F

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aispeech/c/o;->a:Lorg/json/JSONObject;

    const-string v3, "env"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    iget-object v6, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/aispeech/c/o;->d:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-eq v0, v6, :cond_0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "words="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/aispeech/c/o;->c:[F

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/c/o;->c:[F

    array-length v0, v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v5, p0, Lcom/aispeech/c/o;->c:[F

    array-length v5, v5

    if-ge v1, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aispeech/c/o;->c:[F

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aispeech/c/o;->c:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_3

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "thresh="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
