.class public final Lcom/aispeech/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:I

.field private d:Lcom/aispeech/AISampleRate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/aispeech/d;->d:I

    sput v0, Lcom/aispeech/c/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "channel"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wav"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "sampleBytes"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    invoke-virtual {p0, v0}, Lcom/aispeech/c/b;->a(Lcom/aispeech/AISampleRate;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/aispeech/c/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/aispeech/AISampleRate;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/b;->d:Lcom/aispeech/AISampleRate;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "quality"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/AISampleRate;)V
    .locals 3

    iput-object p1, p0, Lcom/aispeech/c/b;->d:Lcom/aispeech/AISampleRate;

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "sampleRate"

    invoke-virtual {p1}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "audioType"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/aispeech/c/b;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    const-string v1, "compress"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/aispeech/c/b;->c:I

    return v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
