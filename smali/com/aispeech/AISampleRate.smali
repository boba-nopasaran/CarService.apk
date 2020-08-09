.class public Lcom/aispeech/AISampleRate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "sampleRate"

.field public static final SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

.field public static final SAMPLE_RATE_8K:Lcom/aispeech/AISampleRate;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/aispeech/AISampleRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/AISampleRate;->a:Ljava/lang/String;

    new-instance v0, Lcom/aispeech/AISampleRate;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lcom/aispeech/AISampleRate;-><init>(I)V

    sput-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    new-instance v0, Lcom/aispeech/AISampleRate;

    const/16 v1, 0x1f40

    invoke-direct {v0, v1}, Lcom/aispeech/AISampleRate;-><init>(I)V

    sput-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_8K:Lcom/aispeech/AISampleRate;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aispeech/AISampleRate;->b:I

    return-void
.end method

.method public static toAISampleRate(I)Lcom/aispeech/AISampleRate;
    .locals 2

    sget-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    invoke-virtual {v0}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_8K:Lcom/aispeech/AISampleRate;

    invoke-virtual {v0}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_8K:Lcom/aispeech/AISampleRate;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/aispeech/AISampleRate;->a:Ljava/lang/String;

    const-string v1, "Unsupported sampleRate!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aispeech/AISampleRate;->b:I

    return v0
.end method
