.class public Lcom/car/speech/audio/AudioParams;
.super Ljava/lang/Object;
.source "AudioParams.java"


# static fields
.field public static final DEFAULT_AUDIO_CHANNEL_AEC:I = 0xc

.field public static final DEFAULT_AUDIO_CHANNEL_NO_AEC:I = 0x10

.field public static final DEFAULT_AUDIO_ENCODING:I = 0x2

.field public static final DEFAULT_AUDIO_TYPE:Ljava/lang/String; = "wav"

.field public static final DEFAULT_MAXSPEECH_TIMES:I = 0x14

.field public static final KEY_AUDIO:Ljava/lang/String; = "audio"

.field public static final KEY_AUDIO_TYPE:Ljava/lang/String; = "audioType"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_COMPLEXITY:Ljava/lang/String; = "complexity"

.field public static final KEY_COMPRESS:Ljava/lang/String; = "compress"

.field public static final KEY_SAMPLE_BYTES:Ljava/lang/String; = "sampleBytes"

.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "sampleRate"

.field public static final KEY_SPX_QUALITY:Ljava/lang/String; = "quality"


# instance fields
.field private JSON:Lorg/json/JSONObject;

.field private audioType:Ljava/lang/String;

.field private channel:I

.field private complexity:I

.field private compress:Ljava/lang/String;

.field private intervalTime:I

.field private maxSpeechTimeS:I

.field private sampleBytes:I

.field private sampleRate:Lcom/car/speech/audio/AISampleRate;

.field private spxQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/car/speech/audio/AudioParams;->JSON:Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/speech/audio/AudioParams;->setChannel(I)V

    const-string v0, "wav"

    invoke-virtual {p0, v0}, Lcom/car/speech/audio/AudioParams;->setAudioType(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/car/speech/audio/AudioParams;->setSampleBytes(I)V

    sget-object v0, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

    invoke-virtual {p0, v0}, Lcom/car/speech/audio/AudioParams;->setSampleRate(Lcom/car/speech/audio/AISampleRate;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/car/speech/audio/AudioParams;->setIntervalTime(I)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/car/speech/audio/AudioParams;->setMaxSpeechTimeS(I)V

    return-void
.end method

.method private setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->channel:I

    return-void
.end method

.method private setSampleBytes(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->sampleBytes:I

    return-void
.end method


# virtual methods
.method public getAudioType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AudioParams;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->channel:I

    return v0
.end method

.method public getComplexity()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->complexity:I

    return v0
.end method

.method public getCompress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AudioParams;->compress:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalTime()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->intervalTime:I

    return v0
.end method

.method public getMaxSpeechTimeS()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->maxSpeechTimeS:I

    return v0
.end method

.method public getSampleBytes()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->sampleBytes:I

    return v0
.end method

.method public getSampleRate()Lcom/car/speech/audio/AISampleRate;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AudioParams;->sampleRate:Lcom/car/speech/audio/AISampleRate;

    return-object v0
.end method

.method public getSpxQuality()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AudioParams;->spxQuality:I

    return v0
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/audio/AudioParams;->audioType:Ljava/lang/String;

    return-void
.end method

.method public setComplexity(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->complexity:I

    return-void
.end method

.method public setCompress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/audio/AudioParams;->compress:Ljava/lang/String;

    return-void
.end method

.method public setIntervalTime(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->intervalTime:I

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->maxSpeechTimeS:I

    return-void
.end method

.method public setSampleRate(Lcom/car/speech/audio/AISampleRate;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/audio/AudioParams;->sampleRate:Lcom/car/speech/audio/AISampleRate;

    return-void
.end method

.method public setSpxQuality(I)V
    .locals 0

    iput p1, p0, Lcom/car/speech/audio/AudioParams;->spxQuality:I

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AudioParams;->JSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/car/speech/audio/AudioParams;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
