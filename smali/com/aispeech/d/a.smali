.class public final Lcom/aispeech/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/aispeech/AISampleRate;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "vad.bin"

    sget-object v1, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/d/a;-><init>(Ljava/lang/String;Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/aispeech/AISampleRate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aispeech/d/a;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/aispeech/d/a;->b:I

    const-string v0, "vad.bin"

    iput-object v0, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/d/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/d/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/d/a;->e:Lcom/aispeech/AISampleRate;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vad.bin"

    iput-object v0, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/d/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/d/a;->a:I

    return-void
.end method

.method public final a(Lcom/aispeech/AISampleRate;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/d/a;->e:Lcom/aispeech/AISampleRate;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/d/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/aispeech/d/a;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/d/a;->f:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/aispeech/d/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "res"

    iget-object v2, p0, Lcom/aispeech/d/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aispeech/d/a;->e:Lcom/aispeech/AISampleRate;

    if-eqz v1, :cond_1

    const-string v1, "sampleRate"

    iget-object v2, p0, Lcom/aispeech/d/a;->e:Lcom/aispeech/AISampleRate;

    invoke-virtual {v2}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lcom/aispeech/d/a;->f:I

    if-lez v1, :cond_2

    const-string v1, "pauseTime"

    iget v2, p0, Lcom/aispeech/d/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v1, "strip"

    iget v2, p0, Lcom/aispeech/d/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "enable"

    iget v2, p0, Lcom/aispeech/d/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/d/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wavPath"

    iget-object v2, p0, Lcom/aispeech/d/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/d/a;->g:Ljava/lang/String;

    return-void
.end method
