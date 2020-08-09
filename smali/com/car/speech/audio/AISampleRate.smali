.class public Lcom/car/speech/audio/AISampleRate;
.super Ljava/lang/Object;
.source "AISampleRate.java"


# static fields
.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "sampleRate"

.field public static final SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

.field public static final SAMPLE_RATE_8K:Lcom/car/speech/audio/AISampleRate;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/car/speech/audio/AISampleRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/speech/audio/AISampleRate;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/car/speech/audio/AISampleRate;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lcom/car/speech/audio/AISampleRate;-><init>(I)V

    sput-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

    new-instance v0, Lcom/car/speech/audio/AISampleRate;

    const/16 v1, 0x1f40

    invoke-direct {v0, v1}, Lcom/car/speech/audio/AISampleRate;-><init>(I)V

    sput-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_8K:Lcom/car/speech/audio/AISampleRate;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/speech/audio/AISampleRate;->sampleRate:I

    return-void
.end method

.method public static toAISampleRate(I)Lcom/car/speech/audio/AISampleRate;
    .locals 2

    sget-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

    invoke-virtual {v0}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_8K:Lcom/car/speech/audio/AISampleRate;

    invoke-virtual {v0}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_8K:Lcom/car/speech/audio/AISampleRate;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/car/speech/audio/AISampleRate;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported sampleRate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    iget v0, p0, Lcom/car/speech/audio/AISampleRate;->sampleRate:I

    return v0
.end method
