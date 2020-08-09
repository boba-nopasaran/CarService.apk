.class public final Lcom/aispeech/tts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/tts/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/tts/a$a;,
        Lcom/aispeech/tts/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/aispeech/tts/g;

.field private g:I

.field private h:I

.field private i:Lcom/aispeech/common/WavFileWriter;

.field private j:Ljava/io/File;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Lcom/aispeech/tts/a$a;

.field private m:Lcom/aispeech/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/a;)I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/aispeech/tts/a;J)V
    .locals 7

    const/16 v0, 0xa

    iget v1, p0, Lcom/aispeech/tts/a;->c:I

    iget v2, p0, Lcom/aispeech/tts/a;->d:I

    iget-object v3, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v3

    mul-int/2addr v2, v3

    div-int v2, v1, v2

    iget-object v1, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    iget v3, p0, Lcom/aispeech/tts/a;->d:I

    div-int/2addr v1, v3

    sub-int v1, v2, v1

    const-string v3, "AIAudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sleep totalFrame: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  remainFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " headPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aispeech/tts/a;->f:Lcom/aispeech/tts/g;

    invoke-virtual {v3}, Lcom/aispeech/tts/g;->b()V

    iget-object v3, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    if-lez v1, :cond_0

    if-le v1, v0, :cond_2

    :goto_0
    :try_start_0
    const-string v1, "AIAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sleep "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v4, v0, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms for sync with onComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/aispeech/tts/a;->m:Lcom/aispeech/a/c;

    mul-int/lit8 v1, v2, 0x32

    mul-int/lit8 v2, v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/aispeech/a/c;->a(IIZ)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->m:Lcom/aispeech/a/c;

    invoke-interface {v0, p1, p2}, Lcom/aispeech/a/c;->a(J)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0}, Lcom/aispeech/common/WavFileWriter;->closeWav()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    move p1, p0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aispeech/tts/a;)I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic d(Lcom/aispeech/tts/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/tts/a;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/aispeech/tts/a;)Lcom/aispeech/a/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/a;->m:Lcom/aispeech/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/tts/a;)Lcom/aispeech/tts/g;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/a;->f:Lcom/aispeech/tts/g;

    return-object v0
.end method

.method static synthetic g(Lcom/aispeech/tts/a;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0}, Lcom/aispeech/common/WavFileWriter;->deleteIfOpened()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/aispeech/tts/a;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/tts/a;->j:Ljava/io/File;

    iget v1, p0, Lcom/aispeech/tts/a;->g:I

    invoke-static {v1}, Lcom/aispeech/AISampleRate;->toAISampleRate(I)Lcom/aispeech/AISampleRate;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/aispeech/common/WavFileWriter;->createWavFileWriter(Ljava/io/File;Lcom/aispeech/AISampleRate;II)Lcom/aispeech/common/WavFileWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    iget-object v0, p0, Lcom/aispeech/tts/a;->m:Lcom/aispeech/a/c;

    invoke-interface {v0}, Lcom/aispeech/a/c;->a()V

    return-void
.end method

.method static synthetic i(Lcom/aispeech/tts/a;)I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/a;->b:I

    return v0
.end method

.method static synthetic j(Lcom/aispeech/tts/a;)Lcom/aispeech/common/WavFileWriter;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    const-string v2, "AIAudioTrack"

    const-string v3, "AIAudioTrack.play()"

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/a;->e:Z

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    new-instance v1, Lcom/aispeech/tts/a$b;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/a$b;-><init>(Lcom/aispeech/tts/a;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/aispeech/tts/a;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    new-instance v2, Lcom/aispeech/tts/a$a;

    iget-object v3, p0, Lcom/aispeech/tts/a;->k:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/aispeech/tts/a$a;-><init>(Lcom/aispeech/tts/a;Ljava/util/concurrent/ExecutorService;J)V

    iput-object v2, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    iget-object v2, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    invoke-virtual {v2}, Lcom/aispeech/tts/a$a;->b()V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "AIAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack not response play() because is in PlayState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-static {p1, v4}, Lcom/aispeech/tts/a;->b(FF)F

    move-result v1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v0}, Lcom/aispeech/tts/a;->b(FF)F

    move-result v0

    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    sub-float v0, v5, v0

    mul-float/2addr v0, v1

    :goto_0
    const-string v3, "AIAudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "volLeft="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",volRight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIAudioTrack"

    const-string v1, "Failed to set volume"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    add-float/2addr v0, v5

    mul-float/2addr v0, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(I)V
    .locals 7

    iget v0, p0, Lcom/aispeech/tts/a;->h:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/aispeech/tts/a;->h:I

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/aispeech/tts/a;->h:I

    iget v2, p0, Lcom/aispeech/tts/a;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget v5, p0, Lcom/aispeech/tts/a;->b:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    new-instance v1, Lcom/aispeech/tts/a$b;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/a$b;-><init>(Lcom/aispeech/tts/a;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/aispeech/tts/a;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reloaded AudioTrack output stream is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aispeech/tts/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mMinBufferSize is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aispeech/tts/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , the sampleRate is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aispeech/tts/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  PeriodInFrame is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aispeech/tts/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 7

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iput p3, p0, Lcom/aispeech/tts/a;->g:I

    iput p2, p0, Lcom/aispeech/tts/a;->h:I

    invoke-static {p3, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/aispeech/tts/a;->b:I

    new-instance v0, Landroid/media/AudioTrack;

    iget v5, p0, Lcom/aispeech/tts/a;->b:I

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    div-int/lit16 v0, p3, 0x3e8

    mul-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/aispeech/tts/a;->d:I

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    new-instance v1, Lcom/aispeech/tts/a$b;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/a$b;-><init>(Lcom/aispeech/tts/a;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/aispeech/tts/a;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack output stream is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mMinBufferSize is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aispeech/tts/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , the sampleRate is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  PeriodInFrame is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aispeech/tts/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final a(Lcom/aispeech/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/a;->m:Lcom/aispeech/a/c;

    return-void
.end method

.method public final a(Lcom/aispeech/tts/g;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/a;->f:Lcom/aispeech/tts/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aispeech/tts/a;->j:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/a;->f:Lcom/aispeech/tts/g;

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->c()I

    move-result v0

    iput v0, p0, Lcom/aispeech/tts/a;->c:I

    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TotalDataSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aispeech/tts/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aispeech/tts/a;->e:Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const-string v0, "AIAudioTrack"

    const-string v1, "AIAudioTrack.stop()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    invoke-virtual {v0}, Lcom/aispeech/tts/a$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AIAudioTrack"

    const-string v1, "mFeedTask is null"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack not response stop() because is in PlayState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "AIAudioTrack"

    const-string v1, "AIAudioTrack.resume()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    iget-object v0, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->l:Lcom/aispeech/tts/a$a;

    invoke-virtual {v0}, Lcom/aispeech/tts/a$a;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack not response resume() because is in PlayState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "AIAudioTrack"

    const-string v1, "AIAudioTrack.pause()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AIAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack not response pause() because is in PlayState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/aispeech/tts/a;->a:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/a;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/a;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lcom/aispeech/tts/a;->k:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0}, Lcom/aispeech/common/WavFileWriter;->deleteIfOpened()V

    iput-object v1, p0, Lcom/aispeech/tts/a;->i:Lcom/aispeech/common/WavFileWriter;

    :cond_2
    return-void
.end method
